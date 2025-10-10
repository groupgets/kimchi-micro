---
layout: default
title: Board Assembly
parent: Hardware
nav_order: 1
---

# Assembly and Fixturing

Expect assembly of this board to be difficult. There are many components, and on both sides of the board, down to 0201 passives. There is little room to support the board for stenciling the second side, and special considerations should be taken for support during second side reflow as well.

## Support during stenciling

![front side stencil fixture](/images/hardware/front-side-stencil-fixture.jpeg)

There are 3d-printable fixtures available for supporting the board during stencil for both sides. They are created in OpenSCAD, so you can load these files and export them as STL or another format as required for your 3D printer.

There is a [first side / back stencil fixture](https://github.com/groupgets/kimchi-micro/blob/master/hardware_sbc/stencil.scad) available, if you don't have any 1.2mm boards to support the board during first side stencil.

The [second side / front stencil fixture](https://github.com/groupgets/kimchi-micro/blob/master/hardware_sbc/stencil-front.scad) uses the the mPCIe connector to support the board on one side, and the mounting holes on the sides and near the other end.

## Support during reflow

In second-sided reflow, holding the board in a stickvice with PTFE jaws works well:

![front side reflow](/images/hardware/front-side-reflow.jpeg)

## v0.9 Hardware Errata (rework items)

As v0.9 boards are early-run, there are a few items that need to be fixed up. Some of these items are fixed in software or in updated versions of the BoM, but there are a couple minor cut-and-jumps that will have to be performed.

* [cut and jump to pull up resistors R19/R20](https://github.com/groupgets/kimchi-micro/issues/4)
* [cut and jump R51 to reconfigure BQ27426](https://github.com/groupgets/kimchi-micro/issues/5)

See the [v0.9 errata](https://github.com/groupgets/kimchi-micro/issues/1) GitHub issue for the most up-to-date information.
