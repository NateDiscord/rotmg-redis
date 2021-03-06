﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using common;

namespace wServer.networking.cliPackets
{
    public class CheckCreditsPacket : ClientPacket
    {
        public override PacketID ID { get { return PacketID.CheckCredits; } }
        public override Packet CreateInstance() { return new CheckCreditsPacket(); }

        protected override void Read(NReader rdr) { }

        protected override void Write(NWriter wtr) { }
    }
}
