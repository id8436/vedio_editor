package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowActionInput implements Parcelable {
    public static final Parcelable.Creator<Adobe360WorkflowActionInput> CREATOR = new Parcelable.Creator<Adobe360WorkflowActionInput>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionInput.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Adobe360WorkflowActionInput createFromParcel(Parcel parcel) {
            return new Adobe360WorkflowActionInput(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Adobe360WorkflowActionInput[] newArray(int i) {
            return new Adobe360WorkflowActionInput[i];
        }
    };
    private ArrayList<String> _acceptedMediaTypes;
    private String _name;

    public Adobe360WorkflowActionInput(String str, ArrayList<String> arrayList) {
        this._name = str;
        this._acceptedMediaTypes = arrayList;
    }

    protected Adobe360WorkflowActionInput(Parcel parcel) {
        this._name = parcel.readString();
        this._acceptedMediaTypes = parcel.createStringArrayList();
    }

    public String getName() {
        return this._name;
    }

    public ArrayList<String> getAcceptedMediaTypes() {
        return this._acceptedMediaTypes;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this._name);
        parcel.writeStringList(this._acceptedMediaTypes);
    }
}
