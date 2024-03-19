```python
"""Boner Plotter 3000
I was bored
Released under MIT+NIGGER license https://plusnigger.org/MIT+NIGGER.txt
"""
import matplotlib.pyplot as plt
import numpy as np
import pydantic


class PenisState(pydantic.BaseModel):
    angle: float
    droop: float
    length: float


def increasing_curve(points, total, steepness):
    # Generate and steepen sequence
    y = np.power(np.arange(1, points + 1), steepness).astype(float)
    # Normalize the sequence so that its sum equals `total`
    y *= total / np.sum(y)
    return y


def draw_penis(angle, droop, length):
    segments = int(length)
    assert -np.pi/2 <= angle <= np.pi*2, 'Angle between straight up and straight down'
    angle_changes = increasing_curve(segments, angle, droop)

    prev_angle = 0
    x = [0]
    y = [0]

    for n in range(segments):
        angle_loss = angle_changes[n]
        prev_angle -= angle_loss

        if prev_angle < -np.pi/2:
            prev_angle = -np.pi/2  # Pointing down stays pointing down

        dx = np.cos(prev_angle)
        dy = np.sin(prev_angle)

        x.append(x[-1] + dx)
        y.append(y[-1] + dy)

    plt.figure(figsize=(10, 10))
    plt.plot(x, y, 'o-')
    plt.axis('equal')
    plt.grid(True)
    plt.show()


progression = [
    # Representation of varying states of erection strength
    # TODO: Autogenerate this based off some parameters
    PenisState(angle=np.pi*0.50,  droop=-1.7, length=0.45),
    PenisState(angle=np.pi*0.45,  droop=-1.4, length=0.50),
    PenisState(angle=np.pi*0.40,  droop=-1.2, length=0.55),
    PenisState(angle=np.pi*0.35,  droop=-1.0, length=0.60),
    PenisState(angle=np.pi*0.30,  droop=-1.0, length=0.65),
    PenisState(angle=np.pi*0.25,  droop=-1.0, length=0.70),
    PenisState(angle=np.pi*0.20,  droop=-1.0, length=0.75),
    PenisState(angle=np.pi*0.10,  droop=-1.0, length=0.80),
    PenisState(angle=np.pi*0.05,  droop=-1.0, length=0.85),
    PenisState(angle=np.pi*0.00,  droop=-1.0, length=0.90),
    PenisState(angle=-np.pi*0.05, droop=-1.0, length=1.00),
    PenisState(angle=-np.pi*0.15, droop=-1.0, length=1.00),
    PenisState(angle=-np.pi*0.25, droop=-1.0, length=1.00),
    PenisState(angle=-np.pi*0.30, droop=-1.0, length=1.00),
    PenisState(angle=-np.pi*0.40, droop=-1.0, length=1.00),
    PenisState(angle=-np.pi*0.45, droop=-1.0, length=1.00),
]


def boner_mapper(intensity, erect_length):
    assert 0 <= intensity <= 1
    selection = progression[int(intensity*(len(progression)-1))]
    draw_penis(selection.angle, selection.droop, selection.length*erect_length)


PENIS_LENGTH_CM = 18  # doesn't even need to be any specific unit lol


for x in range(0, len(progression)):
    # Some faggot accused this of being code smell. IT'S A FUCKING DEMONSTRATION RETARD
    boner_mapper(float(x)/len(progression), PENIS_LENGTH_CM)
```