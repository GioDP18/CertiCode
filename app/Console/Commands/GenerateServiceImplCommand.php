<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class GenerateServiceImplCommand extends Command
{
    protected $signature = 'make:serviceimpl {name}';

    protected $description = 'Generate service implementation';

    public function handle()
    {
        $name = $this->argument('name');
        $serviceInterfaceDirectory = app_path("Http/Implementations");
        $serviceInterfacePath = "{$serviceInterfaceDirectory}/{$name}ServiceImpl.php";

        // Check if the directory exists, if not create it
        if (!File::exists($serviceInterfaceDirectory)) {
            File::makeDirectory($serviceInterfaceDirectory, 0755, true);
        }

        // Generate service interface with default content
        $serviceInterfaceContent = "<?php\n\nnamespace App\Http\Implementations;\n\n\nuse App\Http\Services\\{$name}Service;\n\nClass {$name}ServiceImpl implements {$name}Service\n{\n";
        $serviceInterfaceContent .= "    //Define your methods here\n";
        $serviceInterfaceContent .= "}\n";
        File::put($serviceInterfacePath, $serviceInterfaceContent);

        // Output success message
        $this->info("Service Implementation generated successfully: {$serviceInterfacePath}");

        // Optionally, you can also generate the service implementation here
    }
}
