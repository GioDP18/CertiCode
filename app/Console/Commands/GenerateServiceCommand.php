<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class GenerateServiceCommand extends Command
{
    protected $signature = 'make:service {name}';

    protected $description = 'Generate service and service implementation';

    public function handle()
    {
        $name = $this->argument('name');
        $serviceInterfaceDirectory = app_path("Services");
        $serviceInterfacePath = "{$serviceInterfaceDirectory}/{$name}Service.php";

        // Check if the directory exists, if not create it
        if (!File::exists($serviceInterfaceDirectory)) {
            File::makeDirectory($serviceInterfaceDirectory, 0755, true);
        }

        // Generate service interface with default content
        $serviceInterfaceContent = "<?php\n\nnamespace App\Http\Services;\n\ninterface {$name}Service\n{\n";
        $serviceInterfaceContent .= "    //Define your methods here\n";
        $serviceInterfaceContent .= "}\n";
        File::put($serviceInterfacePath, $serviceInterfaceContent);

        // Output success message
        $this->info("Service interface generated successfully: {$serviceInterfacePath}");

        // Optionally, you can also generate the service implementation here
    }
}
