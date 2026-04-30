package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowActionOutput implements Parcelable {
    public static final Parcelable.Creator<Adobe360WorkflowActionOutput> CREATOR = new Parcelable.Creator<Adobe360WorkflowActionOutput>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionOutput.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Adobe360WorkflowActionOutput createFromParcel(Parcel parcel) {
            return new Adobe360WorkflowActionOutput(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Adobe360WorkflowActionOutput[] newArray(int i) {
            return new Adobe360WorkflowActionOutput[i];
        }
    };
    private String _name;
    private ArrayList<String> _types;

    public Adobe360WorkflowActionOutput(String str, ArrayList<String> arrayList) {
        this._name = str;
        this._types = arrayList;
    }

    protected Adobe360WorkflowActionOutput(Parcel parcel) {
        this._name = parcel.readString();
        this._types = parcel.createStringArrayList();
    }

    public String getName() {
        return this._name;
    }

    public ArrayList<String> getTypes() {
        return this._types;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this._name);
        parcel.writeStringList(this._types);
    }
}
