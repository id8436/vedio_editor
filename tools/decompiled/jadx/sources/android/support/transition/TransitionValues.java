package android.support.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    public boolean equals(Object obj) {
        return (obj instanceof TransitionValues) && this.view == ((TransitionValues) obj).view && this.values.equals(((TransitionValues) obj).values);
    }

    public int hashCode() {
        return (this.view.hashCode() * 31) + this.values.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.view + IOUtils.LINE_SEPARATOR_UNIX) + "    values:";
        Iterator<String> it = this.values.keySet().iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                String next = it.next();
                str = str2 + "    " + next + ": " + this.values.get(next) + IOUtils.LINE_SEPARATOR_UNIX;
            } else {
                return str2;
            }
        }
    }
}
