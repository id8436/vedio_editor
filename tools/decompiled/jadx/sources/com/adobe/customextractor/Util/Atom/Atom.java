package com.adobe.customextractor.Util.Atom;

import com.adobe.customextractor.Util.ParsableByteArray;
import com.adobe.customextractor.Util.Utilities;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Atom {
    public static final int FULL_HEADER_SIZE = 12;
    public static final int HEADER_SIZE = 8;
    public static final int LONG_HEADER_SIZE = 16;
    public static final int LONG_SIZE_PREFIX = 1;
    public final int type;
    public static final int TYPE_ftyp = Utilities.getIntegerCodeForString("ftyp");
    public static final int TYPE_avc1 = Utilities.getIntegerCodeForString("avc1");
    public static final int TYPE_avc3 = Utilities.getIntegerCodeForString("avc3");
    public static final int TYPE_esds = Utilities.getIntegerCodeForString("esds");
    public static final int TYPE_mdat = Utilities.getIntegerCodeForString("mdat");
    public static final int TYPE_mp4a = Utilities.getIntegerCodeForString("mp4a");
    public static final int TYPE_ac_3 = Utilities.getIntegerCodeForString("ac-3");
    public static final int TYPE_dac3 = Utilities.getIntegerCodeForString("dac3");
    public static final int TYPE_ec_3 = Utilities.getIntegerCodeForString("ec-3");
    public static final int TYPE_dec3 = Utilities.getIntegerCodeForString("dec3");
    public static final int TYPE_tfdt = Utilities.getIntegerCodeForString("tfdt");
    public static final int TYPE_tfhd = Utilities.getIntegerCodeForString("tfhd");
    public static final int TYPE_trex = Utilities.getIntegerCodeForString("trex");
    public static final int TYPE_trun = Utilities.getIntegerCodeForString("trun");
    public static final int TYPE_sidx = Utilities.getIntegerCodeForString("sidx");
    public static final int TYPE_moov = Utilities.getIntegerCodeForString("moov");
    public static final int TYPE_mvhd = Utilities.getIntegerCodeForString("mvhd");
    public static final int TYPE_trak = Utilities.getIntegerCodeForString("trak");
    public static final int TYPE_mdia = Utilities.getIntegerCodeForString("mdia");
    public static final int TYPE_minf = Utilities.getIntegerCodeForString("minf");
    public static final int TYPE_stbl = Utilities.getIntegerCodeForString("stbl");
    public static final int TYPE_avcC = Utilities.getIntegerCodeForString("avcC");
    public static final int TYPE_moof = Utilities.getIntegerCodeForString("moof");
    public static final int TYPE_traf = Utilities.getIntegerCodeForString("traf");
    public static final int TYPE_mvex = Utilities.getIntegerCodeForString("mvex");
    public static final int TYPE_tkhd = Utilities.getIntegerCodeForString("tkhd");
    public static final int TYPE_mdhd = Utilities.getIntegerCodeForString("mdhd");
    public static final int TYPE_hdlr = Utilities.getIntegerCodeForString("hdlr");
    public static final int TYPE_stsd = Utilities.getIntegerCodeForString("stsd");
    public static final int TYPE_pssh = Utilities.getIntegerCodeForString("pssh");
    public static final int TYPE_sinf = Utilities.getIntegerCodeForString("sinf");
    public static final int TYPE_schm = Utilities.getIntegerCodeForString("schm");
    public static final int TYPE_schi = Utilities.getIntegerCodeForString("schi");
    public static final int TYPE_tenc = Utilities.getIntegerCodeForString("tenc");
    public static final int TYPE_encv = Utilities.getIntegerCodeForString("encv");
    public static final int TYPE_enca = Utilities.getIntegerCodeForString("enca");
    public static final int TYPE_frma = Utilities.getIntegerCodeForString("frma");
    public static final int TYPE_saiz = Utilities.getIntegerCodeForString("saiz");
    public static final int TYPE_uuid = Utilities.getIntegerCodeForString("uuid");
    public static final int TYPE_senc = Utilities.getIntegerCodeForString("senc");
    public static final int TYPE_pasp = Utilities.getIntegerCodeForString("pasp");
    public static final int TYPE_TTML = Utilities.getIntegerCodeForString("TTML");
    public static final int TYPE_vmhd = Utilities.getIntegerCodeForString("vmhd");
    public static final int TYPE_smhd = Utilities.getIntegerCodeForString("smhd");
    public static final int TYPE_mp4v = Utilities.getIntegerCodeForString("mp4v");
    public static final int TYPE_stts = Utilities.getIntegerCodeForString("stts");
    public static final int TYPE_stss = Utilities.getIntegerCodeForString("stss");
    public static final int TYPE_ctts = Utilities.getIntegerCodeForString("ctts");
    public static final int TYPE_stsc = Utilities.getIntegerCodeForString("stsc");
    public static final int TYPE_stsz = Utilities.getIntegerCodeForString("stsz");
    public static final int TYPE_stco = Utilities.getIntegerCodeForString("stco");
    public static final int TYPE_co64 = Utilities.getIntegerCodeForString("co64");
    public static final int TYPE_wave = Utilities.getIntegerCodeForString("wave");

    Atom(int i) {
        this.type = i;
    }

    public String toString() {
        return getAtomTypeString(this.type);
    }

    public final class LeafAtom extends Atom {
        public final ParsableByteArray data;

        public LeafAtom(int i, ParsableByteArray parsableByteArray) {
            super(i);
            this.data = parsableByteArray;
        }
    }

    public final class ContainerAtom extends Atom {
        public final List<ContainerAtom> containerChildren;
        public final long endByteOffset;
        public final List<LeafAtom> leafChildren;

        public ContainerAtom(int i, long j) {
            super(i);
            this.leafChildren = new ArrayList();
            this.containerChildren = new ArrayList();
            this.endByteOffset = j;
        }

        public void add(LeafAtom leafAtom) {
            this.leafChildren.add(leafAtom);
        }

        public void add(ContainerAtom containerAtom) {
            this.containerChildren.add(containerAtom);
        }

        public LeafAtom getLeafAtomOfType(int i) {
            int size = this.leafChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                LeafAtom leafAtom = this.leafChildren.get(i2);
                if (leafAtom.type == i) {
                    return leafAtom;
                }
            }
            return null;
        }

        public ContainerAtom getContainerAtomOfType(int i) {
            int size = this.containerChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                ContainerAtom containerAtom = this.containerChildren.get(i2);
                if (containerAtom.type == i) {
                    return containerAtom;
                }
            }
            return null;
        }

        @Override // com.adobe.customextractor.Util.Atom.Atom
        public String toString() {
            return getAtomTypeString(this.type) + " leaves: " + Arrays.toString(this.leafChildren.toArray(new LeafAtom[0])) + " containers: " + Arrays.toString(this.containerChildren.toArray(new ContainerAtom[0]));
        }
    }

    public static int parseFullAtomVersion(int i) {
        return (i >> 24) & 255;
    }

    public static int parseFullAtomFlags(int i) {
        return 16777215 & i;
    }

    public static String getAtomTypeString(int i) {
        return "" + ((char) (i >> 24)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }
}
