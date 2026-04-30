package com.google.android.exoplayer.mp4;

import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Atom {
    public final int type;
    public static final int TYPE_avc1 = getAtomTypeInteger("avc1");
    public static final int TYPE_avc3 = getAtomTypeInteger("avc3");
    public static final int TYPE_esds = getAtomTypeInteger("esds");
    public static final int TYPE_mdat = getAtomTypeInteger("mdat");
    public static final int TYPE_mp4a = getAtomTypeInteger("mp4a");
    public static final int TYPE_ac_3 = getAtomTypeInteger("ac-3");
    public static final int TYPE_dac3 = getAtomTypeInteger("dac3");
    public static final int TYPE_ec_3 = getAtomTypeInteger("ec-3");
    public static final int TYPE_dec3 = getAtomTypeInteger("dec3");
    public static final int TYPE_tfdt = getAtomTypeInteger("tfdt");
    public static final int TYPE_tfhd = getAtomTypeInteger("tfhd");
    public static final int TYPE_trex = getAtomTypeInteger("trex");
    public static final int TYPE_trun = getAtomTypeInteger("trun");
    public static final int TYPE_sidx = getAtomTypeInteger("sidx");
    public static final int TYPE_moov = getAtomTypeInteger("moov");
    public static final int TYPE_mvhd = getAtomTypeInteger("mvhd");
    public static final int TYPE_trak = getAtomTypeInteger("trak");
    public static final int TYPE_mdia = getAtomTypeInteger("mdia");
    public static final int TYPE_minf = getAtomTypeInteger("minf");
    public static final int TYPE_stbl = getAtomTypeInteger("stbl");
    public static final int TYPE_avcC = getAtomTypeInteger("avcC");
    public static final int TYPE_moof = getAtomTypeInteger("moof");
    public static final int TYPE_traf = getAtomTypeInteger("traf");
    public static final int TYPE_mvex = getAtomTypeInteger("mvex");
    public static final int TYPE_tkhd = getAtomTypeInteger("tkhd");
    public static final int TYPE_mdhd = getAtomTypeInteger("mdhd");
    public static final int TYPE_hdlr = getAtomTypeInteger("hdlr");
    public static final int TYPE_stsd = getAtomTypeInteger("stsd");
    public static final int TYPE_pssh = getAtomTypeInteger("pssh");
    public static final int TYPE_sinf = getAtomTypeInteger("sinf");
    public static final int TYPE_schm = getAtomTypeInteger("schm");
    public static final int TYPE_schi = getAtomTypeInteger("schi");
    public static final int TYPE_tenc = getAtomTypeInteger("tenc");
    public static final int TYPE_encv = getAtomTypeInteger("encv");
    public static final int TYPE_enca = getAtomTypeInteger("enca");
    public static final int TYPE_frma = getAtomTypeInteger("frma");
    public static final int TYPE_saiz = getAtomTypeInteger("saiz");
    public static final int TYPE_uuid = getAtomTypeInteger("uuid");
    public static final int TYPE_senc = getAtomTypeInteger("senc");
    public static final int TYPE_pasp = getAtomTypeInteger("pasp");
    public static final int TYPE_TTML = getAtomTypeInteger("TTML");
    public static final int TYPE_vmhd = getAtomTypeInteger("vmhd");
    public static final int TYPE_smhd = getAtomTypeInteger("smhd");
    public static final int TYPE_mp4v = getAtomTypeInteger("mp4v");
    public static final int TYPE_stts = getAtomTypeInteger("stts");
    public static final int TYPE_stss = getAtomTypeInteger("stss");
    public static final int TYPE_ctts = getAtomTypeInteger("ctts");
    public static final int TYPE_stsc = getAtomTypeInteger("stsc");
    public static final int TYPE_stsz = getAtomTypeInteger("stsz");
    public static final int TYPE_stco = getAtomTypeInteger("stco");
    public static final int TYPE_co64 = getAtomTypeInteger("co64");

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

        @Override // com.google.android.exoplayer.mp4.Atom
        public String toString() {
            return Atom.getAtomTypeString(this.type) + " leaves: " + Arrays.toString(this.leafChildren.toArray(new LeafAtom[0])) + " containers: " + Arrays.toString(this.containerChildren.toArray(new ContainerAtom[0]));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAtomTypeString(int i) {
        return "" + ((char) (i >> 24)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    private static int getAtomTypeInteger(String str) {
        Assertions.checkArgument(str.length() == 4);
        int iCharAt = 0;
        for (int i = 0; i < 4; i++) {
            iCharAt = (iCharAt << 8) | str.charAt(i);
        }
        return iCharAt;
    }
}
