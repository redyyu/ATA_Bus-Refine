require "ATA2TuningTable"

local function copy(obj, seen)
  if type(obj) ~= 'table' then return obj end
  if seen and seen[obj] then return seen[obj] end
  local s = seen or {}
  local res = setmetatable({}, getmetatable(obj))
  s[obj] = res
  for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
  return res
end

local carRecipe = "ATABusRecipes"

local NewCarTuningTable = {}
NewCarTuningTable["ATABus"] = {
    addPartsFromVehicleScript = "",
    parts = {}
}

NewCarTuningTable["ATABus"].parts["ATA2Bullbar"] = {
    Kengur_1 = {
        icon = "media/ui/tuning2/bus_bullbar_1.png",
        category = "Bullbars",
        name = "IGUI_ATA2_Bullbar",
        protection = {"EngineDoor", "HeadlightLeft", "HeadlightRight"},
        removeIfBroken = true,
        install = {
            use = {
                MetalPipe = 6,
                Screws=15,
                BlowTorch = 7,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 5,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"EngineDoor"},
            time = 65,
        },
        uninstall = {
            animation = "ATA_Crowbar_DoorLeft",
            use = {
                BlowTorch=4,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    },
    Kengur_2 = {
        icon = "media/ui/tuning2/bus_bullbar_2.png",
        category = "Bullbars",
        name = "IGUI_ATA2_Bullbar_Enhanced",
        protection = {"EngineDoor", "HeadlightLeft", "HeadlightRight", "TireFrontLeft", "TireFrontRight"},
        removeIfBroken = true,
        install = {
            use = {
                MetalPipe = 10,
                Screws=20,
                BlowTorch = 8,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 6,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"EngineDoor", "TireFrontLeft", "TireFrontRight"},
            time = 65,
        },
        uninstall = {
            animation = "ATA_Crowbar_DoorLeft",
            use = {
                BlowTorch=4,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    },
    Kengur_3 = {
        icon = "media/ui/tuning2/bus_bullbar_3.png",
        category = "Bullbars",
        name = "IGUI_ATA2_Bullbar_Spiked_Plough",
        protection = {"EngineDoor", "HeadlightLeft", "HeadlightRight", "TireFrontLeft", "TireFrontRight", "GasTank"},
        removeIfBroken = true,
        install = {
            use = {
                MetalPipe = 4,
                SheetMetal = 8,
                Screws=25,
                BlowTorch = 10,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 7,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"EngineDoor", "TireFrontLeft", "TireFrontRight", "GasTank"},
            time = 65,
        },
        uninstall = {
            animation = "ATA_Crowbar_DoorLeft",
            use = {
                BlowTorch=5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    },
}

NewCarTuningTable["ATABus"].parts["ATA2ProtectionDoorFrontRight"] = {
    Door = {
        icon = "media/ui/tuning2/bus_protection_door.png",
        category = "Protection",
        protection = {"DoorFrontRight", "WindowFrontRight"},
        removeIfBroken = true,
        install = {
            use = {
                MetalPipe = 4,
                SheetMetal=6,
                Screws=20,
                BlowTorch = 10,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 6,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"DoorFrontRight", "WindowFrontRight"},
            time = 65, 
        },
        uninstall = {
            animation = "ATA_Crowbar_DoorLeft",
            use = {
                BlowTorch=5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    }
}

NewCarTuningTable["ATABus"].parts["ATA2ProtectionDoorsRear"] = {
    Door_rear = {
        icon = "media/ui/tuning2/bus_protection_door_rear.png",
        category = "Protection",
        protection = {"TruckBed", "WindshieldRear"},
        removeIfBroken = true,
        install = {
            use = {
                MetalPipe = 6,
                SheetMetal=8,
                Screws=20,
                BlowTorch = 10,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
            },
            skills = {
                MetalWelding = 7,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"WindshieldRear"},
            time = 65, 
        },
        uninstall = {
            animation = "ATA_Crowbar_DoorLeft",
            use = {
                BlowTorch=5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    }
}

NewCarTuningTable["ATABus"].parts["ATA2InteractiveTrunkRoofRack"] = {
    Fench = {
        icon = "media/ui/tuning2/bus_roof_rack.png",
        category = "Storage",
        containerCapacity = 180,
        interactiveTrunk = {
            filling = {"TentBox"},
            items = {
                {
                    itemTypes = {"MetalDrum"},
                    modelNameByCount = {"Barrel_1", "Barrel_2"},
                },
                {
                    itemTypes = {"PetrolCan","EmptyPetrolCan"},
                    modelNameByCount = {"GasCan_1", "GasCan_2"},
                },
                {
                    itemTypes = {"Tarp"},
                    modelNameByCount = {"Tent"},
                },
                {
                    itemTypes = {"Pipe","MetalPipe","LeadPipe"},
                    modelNameByCount = {"Pipes","Pipes1","Pipes2"},
                },
            }
        },
        install = {
            area = "RoofRack",
            use = {
                MetalPipe = 6,
                MetalBar=7,
                Screws=20,
                BlowTorch = 10,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
            },
            skills = {
                MetalWelding = 5,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            time = 65, 
        },
        uninstall = {
            area = "RoofRack",
            animation = "ATA_IdleLeverOpenHigh",
            use = {
                BlowTorch=5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            requireUninstalled = {"ATA2RoofRackToolbox"},
            time = 40,
        }
    }
}

NewCarTuningTable["ATABus"].parts["ATA2RoofRackToolbox"] = {
    Box = {
        icon = "media/ui/tuning2/bus_toolbox.png",
        category = "Storage",
        containerCapacity = 40,
        install = {
            area = "TruckBed",
            use = { 
                SheetMetal = 4,
                BlowTorch = 5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
            },
            skills = {
                MetalWelding = 6,
            },
            requireInstalled = {"ATA2InteractiveTrunkRoofRack"},
            recipes = {"Intermediate Mechanics", carRecipe},
            time = 65, 
        },
        uninstall = {
            area = "TruckBed",
            animation = "ATA_IdleLeverOpenHigh",
            use = {
                BlowTorch=3,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    }
}

NewCarTuningTable["ATABus"].parts["ATA2ProtectionRearLeftWheel"] = {
    Default = {
        icon = "media/ui/tuning2/bus_wheel_protection.png",
        category = "Protection",
        protection = {"TireRearLeft"},
        removeIfBroken = true,
        install = {
            use = {
                MetalBar=3,
                Screws=15,
                BlowTorch = 5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
            },
            skills = {
                MetalWelding = 4,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"TireRearLeft"},
            time = 40, 
        },
        uninstall = {
            animation = "ATA_IdleLeverOpenLow",
            sound = "BlowTorch",
            use = {
                BlowTorch=3,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 20,
        }
    }
}

NewCarTuningTable["ATABus"].parts["ATA2ProtectionRearRightWheel"] = copy(NewCarTuningTable["ATABus"].parts["ATA2ProtectionRearLeftWheel"])
NewCarTuningTable["ATABus"].parts["ATA2ProtectionRearRightWheel"].Default.protection = {"TireRearRight"}
NewCarTuningTable["ATABus"].parts["ATA2ProtectionRearRightWheel"].Default.install.requireInstalled = {"TireRearRight"}

NewCarTuningTable["ATAArmyBus"] = NewCarTuningTable["ATABus"]
NewCarTuningTable["ATASchoolBus"] = NewCarTuningTable["ATABus"]

NewCarTuningTable["ATABus"].parts["ATA2ProtectionWindshield"] = {
    Protection_windows_front = {
        icon = "media/ui/tuning2/bus_protection_window_windshield.png",
        category = "Protection",
        protection = {"Windshield"},
        removeIfBroken = true,
        install = {
            area = "GasTank",
            use = {
                MetalBar=9,
                Screws=15,
                BlowTorch = 5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 3,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"Windshield"},
            time = 65, 
        },
        uninstall = {
            area = "GasTank",
            animation = "ATA_IdleLeverOpenHigh",
            sound = "BlowTorch",
            use = {
                BlowTorch=3,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    }
}

NewCarTuningTable["ATABus"].parts["ATA2ProtectionWindowsLeft"] = {
    Protection_windows_left_full = {
        icon = "media/ui/tuning2/bus_protection_window_side.png",
        category = "Protection",
        protection = {"WindowFrontLeft", "WindowMiddleLeft", "WindowRearLeft"},
        removeIfBroken = true,
        disableOpenWindowFromSeat = "SeatFrontLeft",
        install = {
            use = {
                MetalPipe = 3,
                MetalBar=6,
                Screws=15,
                BlowTorch = 5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 4,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"WindowFrontLeft", "WindowMiddleLeft", "WindowRearLeft"},
            time = 65, 
        },
        uninstall = {
            animation = "ATA_IdleLeverOpenHigh",
            use = {
                BlowTorch=3,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    }
}

NewCarTuningTable["ATAPrisonBus"] = copy(NewCarTuningTable["ATABus"])
NewCarTuningTable["ATAPrisonBus"].parts["ATA2ProtectionDoorsRear"].Door_rear.protection = {"TruckBed"}
NewCarTuningTable["ATAPrisonBus"].parts["ATA2ProtectionWindowsLeft"] = {
    Protection_windows_left_light = {
        icon = "media/ui/tuning2/bus_protection_window_side.png",
        category = "Protection",
        protection = {"WindowFrontLeft"},
        removeIfBroken = true,
        disableOpenWindowFromSeat = "SeatFrontLeft",
        install = {
            use = {
                MetalPipe = 3,
                MetalBar=6,
                Screws=15,
                BlowTorch = 5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 4,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"WindowFrontLeft"},
            time = 65, 
        },
        uninstall = {
            animation = "ATA_IdleLeverOpenHigh",
            use = {
                BlowTorch=3,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    }
}


NewCarTuningTable["ATABus"].parts["ATA2ProtectionWindowsRight"] = {
    Protection_windows_right = {
        icon = "media/ui/tuning2/bus_protection_window_side.png",
        category = "Protection",
        protection = {"WindowMiddleRight", "WindowRearRight"},
        removeIfBroken = true,
        install = {
            area = "SeatMiddleRight",
            use = {
                MetalPipe = 3,
                MetalBar=6,
                Screws=15,
                BlowTorch = 5,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                primary = "Base.Wrench",
                secondary = "Base.Screwdriver",
            },
            skills = {
                MetalWelding = 4,
            },
            recipes = {"Intermediate Mechanics", carRecipe},
            requireInstalled = {"WindowMiddleRight", "WindowRearRight"},
            time = 65, 
        },
        uninstall = {
            area = "SeatMiddleRight",
            animation = "ATA_IdleLeverOpenHigh",
            use = {
                BlowTorch=3,
            },
            tools = {
                bodylocation = "Base.WeldingMask",
                both = "Base.Crowbar",
            },
            skills = {
                MetalWelding = 2,
            },
            recipes = {"Intermediate Mechanics"},
            result = "auto",
            time = 40,
        }
    }
}

ATA2Tuning_AddNewCars(NewCarTuningTable)