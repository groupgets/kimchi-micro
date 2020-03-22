# KiCAD board files for kimx micro

## Impedance requirements

```

All tolerances +/-10%.

Layers 1, 8 (kimchi_micro-F_Cu.gtl, kimchi_micro-B_Cu.gbl)
    Single ended:
        Width: 4.79 mils
        Impedance: 50 Ohms
    Differential:
        Width / Gap: 4.99 mils / 4 mils
        Impedance: 85 Ohms
    Differential:
        Width / Gap: 3.99 mils / 3.5 mils
        Impedance: 90 Ohms
    Differential:
        Width / Gap: 3.39 mils / 4.1 mils
        Impedance: 100 Ohms

Layers 2-4 (kimchi_micro-In[2-4]_Cu.g[2-4])
    Single ended:
        Width: 3.59 mils
        Impedance:  50 Ohms

```

## Stackup

```

Copper     FCu  -----                           0.33 oz, plating to 1oz
PP              xxxxx   3 mil
FR4      L2/L3  =====   0.1 mm (except copper)  1/1 oz
PP              xxxxx   9.3 mil
FR4      L4/L5  =====   0.1 mm (except copper)  1/1 oz
PP              xxxxx   9.3 mil
FR4      L6/L7  =====   0.1 mm (except copper)  1/1 oz
PP              xxxxx   3 mil
Copper     BCu  -----                           0.33 oz, plating to 1oz

Lamination thickness: 1.11 mm +/- 0.08 mm
Finished thickness: 1.2 mm

```