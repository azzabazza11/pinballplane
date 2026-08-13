# Pinball Plane

2D pinball playground — physics first, theme later. Browser-only, GitHub Pages friendly.

## Live

(once Pages is on): https://azzabazza11.github.io/pinballplane/

## Local

```bash
python3 -m http.server 8080
```

Open http://localhost:8080/

## Now

- Custom 2D physics: gravity, walls, slingshots, round bumpers, flippers, plunger
- Launch lane opens at the top into the playfield (exit guide)
- Flippers: `Z` / `←` and `/` / `→` (or tap left/right half of the table)
- Plunge: hold `Space` (or hold the launch lane), release to fire
- **Enable tilt** — device orientation adds a *small* gravity nudge (phone / tablet)
- Tiny WebAudio hits (mute in the bar)
- **Edit mode** — drag wall endpoints / bumpers / flipper pivots; add wall, sling, bumper; delete; save to localStorage; reset default (`E` or Edit button)
- **Physics panel** — table angle, gravity, bounce, friction, drag, ball size, bumper/sling/flipper/plunger power, tilt gain, max speed (saved)

## Next (likely)

- Better flipper collision & rubber feel
- More bumper / target / ramp toys
- Drain multiball / rules skeleton
- Export / import table JSON + share link
- GitHub Pages + share QR like the other toys
