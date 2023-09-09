# Display a menu for the user to choose between Install, Uninstall, Second Page, and Exit
while ($true) {
    Write-Host "Select an option:"
    Write-Host "1. Install"
    Write-Host "2. Uninstall"
    Write-Host "3. Second Page"
    Write-Host "0. Exit"
    $choice = Read-Host "Enter the number of your choice"

    switch ($choice) {
        1 {
            # Install menu
            while ($true) {
                Write-Host "Install Menu - Select an option:"
                Write-Host "4. Install Discord"
                Write-Host "5. Install Brave browser"
                Write-Host "6. Install Epic Games Launcher"
                Write-Host "7. Install Firefox"
                Write-Host "8. Return to the main menu"
                $installChoice = Read-Host "Enter the number of your choice"

                switch ($installChoice) {
                    4 {
                        # Install Discord using winget
                        Write-Host "Installing Discord..."
                        winget install Discord
                        break
                    }
                    5 {
                        # Install Brave browser using winget
                        Write-Host "Installing Brave browser..."
                        winget install BraveSoftware.BraveBrowser
                        break
                    }
                    6 {
                        # Install Epic Games Launcher using winget
                        Write-Host "Installing Epic Games Launcher..."
                        winget install EpicGames.EpicGamesLauncher
                        break
                    }
                    7 {
                        # Install Firefox using winget
                        Write-Host "Installing Firefox..."
                        winget install Mozilla.Firefox
                        break
                    }
                    8 {
                        # Return to the main menu
                        break
                    }
                    default {
                        Write-Host "Invalid choice. Please select 4, 5, 6, 7, or 8."
                    }
                }
            }
        }
        2 {
            # Uninstall menu
            while ($true) {
                Write-Host "Uninstall Menu - Select an option:"
                Write-Host "9. Uninstall Brave browser"
                Write-Host "10. Return to the main menu"
                $uninstallChoice = Read-Host "Enter the number of your choice"

                switch ($uninstallChoice) {
                    9 {
                        # Uninstall Brave browser using winget
                        Write-Host "Uninstalling Brave browser..."
                        winget uninstall BraveSoftware.BraveBrowser
                        break
                    }
                    10 {
                        # Return to the main menu
                        break
                    }
                    default {
                        Write-Host "Invalid choice. Please select 9 or 10."
                    }
                }
            }
        }
        3 {
            # Second page
            Write-Host "Second Page - Select an option:"
            Write-Host "11. Option 1 on the second page"
            Write-Host "12. Option 2 on the second page"
            Write-Host "13. Return to the main menu"
            $secondPageChoice = Read-Host "Enter the number of your choice"

            switch ($secondPageChoice) {
                11 {
                    # Implement action for option 1 on the second page
                    Write-Host "Performing action for Option 1 on the second page..."
                    break
                }
                12 {
                    # Implement action for option 2 on the second page
                    Write-Host "Performing action for Option 2 on the second page..."
                    break
                }
                13 {
                    # Return to the main menu
                    break
                }
                default {
                    Write-Host "Invalid choice on the second page. Please select 11, 12, or 13."
                }
            }
        }
        0 {
            # Exit the script
            exit
        }
        default {
            Write-Host "Invalid choice. Please select a valid option."
        }
    }
}
