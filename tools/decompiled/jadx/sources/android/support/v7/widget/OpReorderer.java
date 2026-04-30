package android.support.v7.widget;

import android.support.v7.widget.AdapterHelper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class OpReorderer {
    final Callback mCallback;

    interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    void reorderOps(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder != -1) {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            } else {
                return;
            }
        }
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int i, int i2) {
        AdapterHelper.UpdateOp updateOp = list.get(i);
        AdapterHelper.UpdateOp updateOp2 = list.get(i2);
        switch (updateOp2.cmd) {
            case 1:
                swapMoveAdd(list, i, updateOp, i2, updateOp2);
                break;
            case 2:
                swapMoveRemove(list, i, updateOp, i2, updateOp2);
                break;
            case 4:
                swapMoveUpdate(list, i, updateOp, i2, updateOp2);
                break;
        }
    }

    void swapMoveRemove(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        boolean z;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp;
        boolean z2 = false;
        if (updateOp.positionStart < updateOp.itemCount) {
            z = updateOp2.positionStart == updateOp.positionStart && updateOp2.itemCount == updateOp.itemCount - updateOp.positionStart;
        } else if (updateOp2.positionStart == updateOp.itemCount + 1 && updateOp2.itemCount == updateOp.positionStart - updateOp.itemCount) {
            z2 = true;
            z = true;
        } else {
            z = false;
            z2 = true;
        }
        if (updateOp.itemCount < updateOp2.positionStart) {
            updateOp2.positionStart--;
        } else if (updateOp.itemCount < updateOp2.positionStart + updateOp2.itemCount) {
            updateOp2.itemCount--;
            updateOp.cmd = 2;
            updateOp.itemCount = 1;
            if (updateOp2.itemCount == 0) {
                list.remove(i2);
                this.mCallback.recycleUpdateOp(updateOp2);
                return;
            }
            return;
        }
        if (updateOp.positionStart <= updateOp2.positionStart) {
            updateOp2.positionStart++;
            updateOpObtainUpdateOp = null;
        } else if (updateOp.positionStart < updateOp2.positionStart + updateOp2.itemCount) {
            updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(2, updateOp.positionStart + 1, (updateOp2.positionStart + updateOp2.itemCount) - updateOp.positionStart, null);
            updateOp2.itemCount = updateOp.positionStart - updateOp2.positionStart;
        } else {
            updateOpObtainUpdateOp = null;
        }
        if (z) {
            list.set(i, updateOp2);
            list.remove(i2);
            this.mCallback.recycleUpdateOp(updateOp);
            return;
        }
        if (z2) {
            if (updateOpObtainUpdateOp != null) {
                if (updateOp.positionStart > updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart -= updateOpObtainUpdateOp.itemCount;
                }
                if (updateOp.itemCount > updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount -= updateOpObtainUpdateOp.itemCount;
                }
            }
            if (updateOp.positionStart > updateOp2.positionStart) {
                updateOp.positionStart -= updateOp2.itemCount;
            }
            if (updateOp.itemCount > updateOp2.positionStart) {
                updateOp.itemCount -= updateOp2.itemCount;
            }
        } else {
            if (updateOpObtainUpdateOp != null) {
                if (updateOp.positionStart >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart -= updateOpObtainUpdateOp.itemCount;
                }
                if (updateOp.itemCount >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount -= updateOpObtainUpdateOp.itemCount;
                }
            }
            if (updateOp.positionStart >= updateOp2.positionStart) {
                updateOp.positionStart -= updateOp2.itemCount;
            }
            if (updateOp.itemCount >= updateOp2.positionStart) {
                updateOp.itemCount -= updateOp2.itemCount;
            }
        }
        list.set(i, updateOp2);
        if (updateOp.positionStart != updateOp.itemCount) {
            list.set(i2, updateOp);
        } else {
            list.remove(i2);
        }
        if (updateOpObtainUpdateOp != null) {
            list.add(i, updateOpObtainUpdateOp);
        }
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        int i3 = 0;
        if (updateOp.itemCount < updateOp2.positionStart) {
            i3 = -1;
        }
        if (updateOp.positionStart < updateOp2.positionStart) {
            i3++;
        }
        if (updateOp2.positionStart <= updateOp.positionStart) {
            updateOp.positionStart += updateOp2.itemCount;
        }
        if (updateOp2.positionStart <= updateOp.itemCount) {
            updateOp.itemCount += updateOp2.itemCount;
        }
        updateOp2.positionStart = i3 + updateOp2.positionStart;
        list.set(i, updateOp2);
        list.set(i2, updateOp);
    }

    void swapMoveUpdate(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        AdapterHelper.UpdateOp updateOpObtainUpdateOp;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp2 = null;
        if (updateOp.itemCount < updateOp2.positionStart) {
            updateOp2.positionStart--;
            updateOpObtainUpdateOp = null;
        } else if (updateOp.itemCount < updateOp2.positionStart + updateOp2.itemCount) {
            updateOp2.itemCount--;
            updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(4, updateOp.positionStart, 1, updateOp2.payload);
        } else {
            updateOpObtainUpdateOp = null;
        }
        if (updateOp.positionStart <= updateOp2.positionStart) {
            updateOp2.positionStart++;
        } else if (updateOp.positionStart < updateOp2.positionStart + updateOp2.itemCount) {
            int i3 = (updateOp2.positionStart + updateOp2.itemCount) - updateOp.positionStart;
            updateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, updateOp.positionStart + 1, i3, updateOp2.payload);
            updateOp2.itemCount -= i3;
        }
        list.set(i2, updateOp);
        if (updateOp2.itemCount > 0) {
            list.set(i, updateOp2);
        } else {
            list.remove(i);
            this.mCallback.recycleUpdateOp(updateOp2);
        }
        if (updateOpObtainUpdateOp != null) {
            list.add(i, updateOpObtainUpdateOp);
        }
        if (updateOpObtainUpdateOp2 != null) {
            list.add(i, updateOpObtainUpdateOp2);
        }
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z;
        boolean z2 = false;
        int size = list.size() - 1;
        while (size >= 0) {
            if (list.get(size).cmd == 8) {
                if (z2) {
                    return size;
                }
                z = z2;
            } else {
                z = true;
            }
            size--;
            z2 = z;
        }
        return -1;
    }
}
