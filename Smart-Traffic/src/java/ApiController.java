package com.smarttraffic;
import java.util.*;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController @RequestMapping("/api")
public class ApiController {
  private final JdbcTemplate db;
  private static final Set<String> TABLES = Set.of("locations","violations","incidents","routes",
      "pedestrian_zones","traffic_data","infrastructure_recommendations","vehicles");
  public ApiController(JdbcTemplate db){ this.db = db; }

  // GET /api/locations, /api/violations, ... (whitelisted tables only)
  @GetMapping("/{table}")
  public List<Map<String,Object>> all(@PathVariable String table){
    if(!TABLES.contains(table)) throw new ResponseStatusException(HttpStatus.NOT_FOUND);
    return db.queryForList("SELECT * FROM " + table);
  }

  // Secondary feature: vehicle search
  @GetMapping("/vehicles/{no}")
  public Map<String,Object> vehicle(@PathVariable String no){
    Map<String,Object> r = new HashMap<>();
    r.put("vehicle", db.queryForList("SELECT * FROM vehicles WHERE vehicle_no=?", no.toUpperCase()));
    r.put("violations", db.queryForList("SELECT v.type,v.v_date,l.name AS location,v.fine,v.status FROM violations v " +
        "JOIN locations l ON l.id=v.location_id WHERE v.vehicle_no=? ORDER BY v.v_date DESC", no.toUpperCase()));
    return r;
  }

  @PostMapping("/incidents")
  public Map<String,String> addIncident(@RequestBody Map<String,Object> b){
    db.update("INSERT INTO incidents(location_id,type,severity,affected_road,action) VALUES(?,?,?,?,?)",
        b.get("location_id"), b.get("type"), b.get("severity"), b.get("affected_road"), b.get("action"));
    return Map.of("status","ok");
  }
}
