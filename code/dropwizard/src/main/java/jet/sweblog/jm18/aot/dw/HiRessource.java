package jet.sweblog.jm18.aot.dw;

import java.util.concurrent.atomic.AtomicLong;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.codahale.metrics.annotation.Timed;

@Path("/hi")
@Produces(MediaType.APPLICATION_JSON)
public class HiRessource {
    private static final AtomicLong counter = new AtomicLong();

    @GET
    @Timed
    public String sayHi() {
        return "Hi " + counter.incrementAndGet() + "!";
    }
}
