package jet.sweblog.jm18.aot.dw;


import io.dropwizard.Application;
import io.dropwizard.setup.Environment;

public class DWApplication extends Application<DWConfiguration> {
    public static void main(String[] args) throws Exception {
        new DWApplication().run(args);
    }

    @Override
    public void run(DWConfiguration dwApplication, Environment environment) throws Exception {
        environment.jersey().register(new HiRessource());
    }
}
