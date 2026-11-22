# EngiConvert — All Engineering Units in One Place.

Offline Flutter app (Android 8.0+, package `com.engiconvert.engineeringcalculator`). No login, no ads, no paid APIs.

## Build
**Option A – GitHub Actions (no local setup):** push this folder to a GitHub repo → Actions → *Build EngiConvert APK* → download artifact `EngiConvert-APK` (APK + test report).

**Option B – local:** install Flutter (stable), Android SDK, JDK 17, then run `./build.sh`. APK: `build/app/outputs/flutter-apk/app-release.apk`.

## Install
Copy the APK to the phone → open it → allow *Install unknown apps* → Install. (Release APK is signed with the debug key; create your own keystore before Play Store publishing.)

## Structure
- `lib/engine/catalog.dart` – all units, exact constants, conversion engine, formatting
- `lib/state.dart` – settings, history, favorites, persistence, English/Bengali strings
- `lib/main.dart` – Home, Conversion, Civil, Rebar calculator, History, Settings/About
- `test/conversion_test.dart` – accuracy tests

## Accuracy notes
- Constants are exact definitions (inch 0.0254 m, lb 0.45359237 kg, g₀ 9.80665, US gal 3.785411784 L, BTU_IT 1055.05585262 J, cal 4.184 J, eV 1.602176634e-19 J). Derived units (psi, psf, hp, lbf, ft², ft³…) are computed from them, not typed as rounded numbers.
- Area/volume use squared/cubed length factors. Temperature uses affine formulas via Kelvin.
- Regional units are flagged in-app: US vs Imperial gallon, short vs metric ton, Bigha/Katha (configurable in Settings; defaults Katha = 720 ft², Bigha = 20 Katha), 30-day month, 365-day year.
- Unit-weight (kN/m³) uses g = 9.80665; steel density for rebar = 7850 kg/m³.

## Supported units

**Length:** Millimeter (mm), Centimeter (cm), Meter (m), Kilometer (km), Inch (in), Foot (international) (ft), Yard (yd), Mile (statute) (mi), Micron (µm), Nautical Mile (nmi)

**Area:** Square Millimeter (mm²), Square Centimeter (cm²), Square Meter (m²), Square Kilometer (km²), Square Inch (in²), Square Foot (ft²), Square Yard (yd²), Acre (international) (ac), Hectare (ha), Decimal (Shatak) (dec), Bigha (bigha), Katha (katha)

**Volume:** Cubic Millimeter (mm³), Cubic Centimeter (cm³), Cubic Meter (m³), Liter (L), Milliliter (mL), Cubic Inch (in³), Cubic Foot (CFT) (ft³), Cubic Yard (yd³), Gallon (US liquid) (gal US), Gallon (Imperial) (gal UK), Barrel (US oil, 42 gal) (bbl)

**Weight & Mass:** Milligram (mg), Gram (g), Kilogram (kg), Metric Ton (t), Pound (lb), Ounce (oz), US Ton (short ton) (US ton), Quintal (metric) (q)

**Force:** Newton (N), Kilonewton (kN), Meganewton (MN), Dyne (dyn), Kilogram-force (kgf), Ton-force (metric) (tf), Pound-force (lbf)

**Pressure & Stress:** Pascal (Pa), Kilopascal (kPa), Megapascal (MPa), Gigapascal (GPa), Bar (bar), PSI (psi), PSF (psf), Atmosphere (standard) (atm), kg/cm² (kgf/cm²) (kg/cm²), N/mm² (N/mm²), kN/m² (kN/m²), Meter of water (conventional) (mH₂O)

**Temperature:** Celsius (°C), Fahrenheit (°F), Kelvin (K)

**Speed & Velocity:** Meter/second (m/s), Kilometer/hour (km/h), Mile/hour (mph), Foot/second (ft/s), Knot (kn)

**Time:** Second (s), Minute (min), Hour (h), Day (d), Week (wk), Month (30-day convention) (mo), Year (365-day convention) (yr)

**Energy & Work:** Joule (J), Kilojoule (kJ), Megajoule (MJ), Calorie (thermochemical) (cal), Kilocalorie (thermochemical) (kcal), Watt-hour (Wh), Kilowatt-hour (kWh), Electronvolt (eV)

**Power:** Watt (W), Kilowatt (kW), Megawatt (MW), Horsepower (mechanical) (hp), Metric Horsepower (PS)

**Angle:** Degree (°), Radian (rad), Gradian (gon), Arcminute (′), Arcsecond (″)

**Density:** kg/m³ (kg/m³), g/cm³ (g/cm³), g/mL (g/mL), lb/ft³ (lb/ft³), lb/in³ (lb/in³), kN/m³ (unit weight) (kN/m³)

**Flow Rate:** m³/s (m³/s), m³/hr (m³/h), Liter/second (L/s), Liter/minute (L/min), CFT/minute (ft³/min), CFT/second (ft³/s), Gallon (US)/minute (gal/min)

**Moment / Bending Moment / Torque:** Newton-meter (N·m), Kilonewton-meter (kN·m), Kilogram-force meter (kgf·m), Pound-force foot (lb-ft)

**Thermal Conductivity:** W/(m·K) (W/(m·K)), BTU/(h·ft·°F) (BTU/(h·ft·°F)), cal/(s·cm·°C) (cal/(s·cm·°C))

**Specific Heat Capacity:** J/(kg·K) (J/(kg·K)), kJ/(kg·K) (kJ/(kg·K)), cal/(g·°C) (cal/(g·°C)), BTU/(lb·°F) (BTU/(lb·°F))

**Dynamic Viscosity:** Pascal-second (Pa·s), Millipascal-second (mPa·s), Centipoise (cP), Poise (P), lb/(ft·s) (lb/(ft·s))

**Kinematic Viscosity:** m²/s (m²/s), Centistokes (cSt), Stokes (St), ft²/s (ft²/s)

**Frequency:** Hertz (Hz), Kilohertz (kHz), Megahertz (MHz), Gigahertz (GHz), Revolutions/minute (rpm)

**Electrical Current:** Microampere (µA), Milliampere (mA), Ampere (A), Kiloampere (kA)

**Voltage:** Microvolt (µV), Millivolt (mV), Volt (V), Kilovolt (kV)

**Resistance:** Milliohm (mΩ), Ohm (Ω), Kilohm (kΩ), Megohm (MΩ)

**Electrical Power:** Milliwatt (mW), Watt (W), Kilowatt (kW), Megawatt (MW)

**Capacitance:** Picofarad (pF), Nanofarad (nF), Microfarad (µF), Millifarad (mF), Farad (F)

**Inductance:** Nanohenry (nH), Microhenry (µH), Millihenry (mH), Henry (H)

**Charge:** Microcoulomb (µC), Millicoulomb (mC), Coulomb (C), Milliampere-hour (mAh), Ampere-hour (Ah)

**Slope / Gradient:** Percentage (rise/run × 100) (%), Degree (°), Ratio 1 : n (rise : run) (1:n)


**Civil section:** concrete/sand/aggregate volume (CFT, m³, L), brick dimensions, rebar diameter, steel weight, cement bags/kg/t, land (decimal, acre, ha, ft², m², katha, bigha), road length, level, slope/gradient (%, °, 1:n), rainfall, soil density, water pressure, concrete unit weight, plus a rebar weight (kg/m) calculator.
