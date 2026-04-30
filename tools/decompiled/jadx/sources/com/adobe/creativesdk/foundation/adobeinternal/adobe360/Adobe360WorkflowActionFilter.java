package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowActionFilter implements Parcelable {
    public static final Parcelable.Creator<Adobe360WorkflowActionFilter> CREATOR = new Parcelable.Creator<Adobe360WorkflowActionFilter>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowActionFilter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Adobe360WorkflowActionFilter createFromParcel(Parcel parcel) {
            return new Adobe360WorkflowActionFilter(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Adobe360WorkflowActionFilter[] newArray(int i) {
            return new Adobe360WorkflowActionFilter[i];
        }
    };
    private ArrayList<Adobe360WorkflowActionType> _actionTypes;
    private ArrayList<Adobe360WorkflowActionInput> _inputs;
    private ArrayList<Adobe360WorkflowActionOutput> _outputs;
    private ArrayList<String> _subTypes;

    public Adobe360WorkflowActionFilter(ArrayList<Adobe360WorkflowActionType> arrayList, ArrayList<String> arrayList2, ArrayList<Adobe360WorkflowActionInput> arrayList3, ArrayList<Adobe360WorkflowActionOutput> arrayList4) {
        this._actionTypes = arrayList;
        this._subTypes = arrayList2;
        this._inputs = arrayList3;
        this._outputs = arrayList4;
    }

    protected Adobe360WorkflowActionFilter(Parcel parcel) {
        this._subTypes = parcel.createStringArrayList();
        readList(parcel);
        this._inputs = parcel.createTypedArrayList(Adobe360WorkflowActionInput.CREATOR);
        this._outputs = parcel.createTypedArrayList(Adobe360WorkflowActionOutput.CREATOR);
    }

    public ArrayList<Adobe360WorkflowActionType> getActionTypes() {
        return this._actionTypes;
    }

    public ArrayList<String> getSubTypes() {
        return this._subTypes;
    }

    public ArrayList<Adobe360WorkflowActionInput> getInputs() {
        return this._inputs;
    }

    public ArrayList<Adobe360WorkflowActionOutput> getOutputs() {
        return this._outputs;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this._subTypes);
        writeList(this._actionTypes, parcel, i);
        parcel.writeTypedList(this._inputs);
        parcel.writeTypedList(this._outputs);
    }

    private final void writeList(ArrayList<Adobe360WorkflowActionType> arrayList, Parcel parcel, int i) {
        if (arrayList == null) {
            parcel.writeInt(-1);
            return;
        }
        int size = arrayList.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeString(arrayList.get(i2).toString());
        }
    }

    private final void readList(Parcel parcel) {
        int i = parcel.readInt();
        if (i > 0) {
            this._actionTypes = new ArrayList<>();
        }
        readListInternal(parcel, i);
    }

    private void readListInternal(Parcel parcel, int i) {
        while (i > 0) {
            this._actionTypes.add(Adobe360WorkflowActionType.getActionType(parcel.readString()));
            i--;
        }
    }
}
