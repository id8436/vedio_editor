package c.a.a.a.a.c;

/* JADX INFO: compiled from: Priority.java */
/* JADX INFO: loaded from: classes.dex */
public enum o {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    static <Y> int a(u uVar, Y y) {
        o priority;
        if (y instanceof u) {
            priority = ((u) y).getPriority();
        } else {
            priority = NORMAL;
        }
        return priority.ordinal() - uVar.getPriority().ordinal();
    }
}
