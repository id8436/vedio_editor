package com.adobe.premiereclip.prexport.fcpxml;

import com.adobe.premiereclip.prexport.fcpxml.clip.MasterClip;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class Bin extends Xmlable {
    protected String mName;
    protected String mXmlTagName = "bin";
    protected ArrayList<Bin> mBins = new ArrayList<>();
    protected ArrayList<MasterClip> mMasterClips = new ArrayList<>();
    protected ArrayList<Sequence> mSequences = new ArrayList<>();

    public Bin(String str) {
        this.mName = str;
    }

    public void addBin(Bin bin) {
        this.mBins.add(bin);
    }

    public Bin getBinAt(int i) {
        if (this.mBins.size() > i) {
            return this.mBins.get(i);
        }
        return null;
    }

    public ArrayList<Bin> getBins() {
        return this.mBins;
    }

    public long numBins() {
        return this.mBins.size();
    }

    public void addMasterClip(MasterClip masterClip) {
        this.mMasterClips.add(masterClip);
    }

    public ArrayList<MasterClip> getMasterClips() {
        return this.mMasterClips;
    }

    public int numMasterClips() {
        return this.mMasterClips.size();
    }

    public void addSequence(Sequence sequence) {
        this.mSequences.add(sequence);
    }

    public ArrayList<Sequence> getSequences() {
        return this.mSequences;
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement(this.mXmlTagName);
        xmlElement2.addChild(new XmlElement("name", this.mName));
        XmlElement xmlElement3 = new XmlElement("children");
        Iterator<Bin> it = this.mBins.iterator();
        while (it.hasNext()) {
            it.next().toXmlElement(xmlElement3);
        }
        Iterator<MasterClip> it2 = this.mMasterClips.iterator();
        while (it2.hasNext()) {
            it2.next().toXmlElement(xmlElement3);
        }
        Iterator<Sequence> it3 = this.mSequences.iterator();
        while (it3.hasNext()) {
            it3.next().toXmlElement(xmlElement3);
        }
        xmlElement2.addChild(xmlElement3);
        xmlElement.addChild(xmlElement2);
    }
}
