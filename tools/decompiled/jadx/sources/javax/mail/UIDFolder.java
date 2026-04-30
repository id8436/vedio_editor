package javax.mail;

import com.dropbox.core.android.AuthActivity;
import javax.mail.FetchProfile;

/* JADX INFO: loaded from: classes3.dex */
public interface UIDFolder {
    public static final long LASTUID = -1;

    Message getMessageByUID(long j) throws MessagingException;

    Message[] getMessagesByUID(long j, long j2) throws MessagingException;

    Message[] getMessagesByUID(long[] jArr) throws MessagingException;

    long getUID(Message message) throws MessagingException;

    long getUIDValidity() throws MessagingException;

    public class FetchProfileItem extends FetchProfile.Item {
        public static final FetchProfileItem UID = new FetchProfileItem(AuthActivity.EXTRA_UID);

        protected FetchProfileItem(String str) {
            super(str);
        }
    }
}
