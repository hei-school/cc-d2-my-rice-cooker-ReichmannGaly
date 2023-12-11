import Foundation

class RiceCooker {
    var isOn = false
    var isCooking = false
    var isPlugged = false
    var isKeepWarm = false
    var isSteamCooking = false

    func turnOn() {
        if isPlugged {
            isOn = true
            print("Rice cooker is now on.")
        } else {
            print("Rice cooker is not plugged in. Cannot turn on.")
        }
    }

    func turnOff() {
        if isOn {
            isOn = false
            isCooking = false
            isKeepWarm = false
            isSteamCooking = false
            print("Rice cooker is now off.")
        } else {
            print("Rice cooker is already off.")
        }
    }

    func cookRice() {
        if isOn {
            isCooking = true
            print("Cooking rice...")
        } else {
            print("Cannot cook rice. Rice cooker is off.")
        }
    }

    func stopCooking() {
        if isCooking {
            isCooking = false
            isKeepWarm = true
            print("Rice cooking process stopped. Keep Warm mode activated.")
        } else if isSteamCooking {
            isSteamCooking = false
            print("Steam cooking process stopped.")
        } else {
            print("No rice cooking process to stop.")
        }
    }

    func keepWarm() {
        if isOn && !isCooking {
            isKeepWarm = true
            print("Keep Warm mode activated.")
        } else {
            print("Keep Warm mode can only be activated when the rice cooker is turned on and not cooking.")
        }
    }

    func steamCooking() {
        if isOn {
            isSteamCooking = true
            print("Steam cooking process started.")
        } else {
            print("Cannot start steam cooking. Rice cooker is off.")
        }
    }

    func stopSteamCooking() {
        if isSteamCooking {
            isSteamCooking = false
            print("Steam cooking process stopped.")
        } else {
            print("No steam cooking process to stop.")
        }
    }

    func plugIn() {
        if isPlugged {
            print("Rice cooker is already plugged in.")
        } else {
            isPlugged = true
            print("Rice cooker is plugged in.")
        }
    }

    func plugOut() {
        isPlugged = false
        isOn = false
        isCooking = false
        isKeepWarm = false
        isSteamCooking = false
        print("Rice cooker is unplugged and turned off.")
    }

    func checkActivity() {
        if isCooking {
            print("Current activity: Cooking")
        } else if isKeepWarm {
            print("Current activity: Keep Warm")
        } else if isSteamCooking {
            print("Current activity: Steam Cooking")
        } else {
            print("No activity in progress.")
        }
    }
}

func main() {
    let riceCooker = RiceCooker()

    while true {
        print("\n--- Rice Cooker Console App ---")
        print("1. Turn On")
        print("2. Turn Off")
        print("3. Cook Rice")
        print("4. Stop Cooking")
        print("5. Keep Warm")
        print("6. Steam Cooking")
        print("7. Stop Steam Cooking")
        print("8. Check Activity")
        print("9. Plug In")
        print("10. Plug Out")
        print("11. Exit")
        print("Choose an option (1-11): ")

        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1: riceCooker.turnOn()
            case 2: riceCooker.turnOff()
            case 3: riceCooker.cookRice()
            case 4: riceCooker.stopCooking()
            case 5: riceCooker.keepWarm()
            case 6: riceCooker.steamCooking()
            case 7: riceCooker.stopSteamCooking()
            case 8: riceCooker.checkActivity()
            case 9: riceCooker.plugIn()
            case 10: riceCooker.plugOut()
            case 11:
                print("Exiting Rice Cooker App. Goodbye!")
                return
            default:
                print("Invalid choice. Please enter a number between 1 and 11.")
            }
        }
    }
}

main()