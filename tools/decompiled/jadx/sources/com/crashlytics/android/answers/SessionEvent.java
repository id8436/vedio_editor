package com.crashlytics.android.answers;

import android.app.Activity;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class SessionEvent {
    static final String ACTIVITY_KEY = "activity";
    static final String SESSION_ID_KEY = "sessionId";
    public final Map<String, Object> customAttributes;
    public final String customType;
    public final Map<String, String> details;
    public final Map<String, Object> predefinedAttributes;
    public final String predefinedType;
    public final SessionEventMetadata sessionEventMetadata;
    private String stringRepresentation;
    public final long timestamp;
    public final Type type;

    enum Type {
        CREATE,
        START,
        RESUME,
        SAVE_INSTANCE_STATE,
        PAUSE,
        STOP,
        DESTROY,
        ERROR,
        CRASH,
        INSTALL,
        CUSTOM,
        PREDEFINED
    }

    public static Builder lifecycleEventBuilder(Type type, Activity activity) {
        return new Builder(type).details(Collections.singletonMap(ACTIVITY_KEY, activity.getClass().getName()));
    }

    public static Builder installEventBuilder() {
        return new Builder(Type.INSTALL);
    }

    public static Builder errorEventBuilder(String str) {
        return new Builder(Type.ERROR).details(Collections.singletonMap(SESSION_ID_KEY, str));
    }

    public static Builder crashEventBuilder(String str) {
        return new Builder(Type.CRASH).details(Collections.singletonMap(SESSION_ID_KEY, str));
    }

    public static Builder customEventBuilder(CustomEvent customEvent) {
        return new Builder(Type.CUSTOM).customType(customEvent.getCustomType()).customAttributes(customEvent.getCustomAttributes());
    }

    public static Builder predefinedEventBuilder(PredefinedEvent<?> predefinedEvent) {
        return new Builder(Type.PREDEFINED).predefinedType(predefinedEvent.getPredefinedType()).predefinedAttributes(predefinedEvent.getPredefinedAttributes()).customAttributes(predefinedEvent.getCustomAttributes());
    }

    private SessionEvent(SessionEventMetadata sessionEventMetadata, long j, Type type, Map<String, String> map, String str, Map<String, Object> map2, String str2, Map<String, Object> map3) {
        this.sessionEventMetadata = sessionEventMetadata;
        this.timestamp = j;
        this.type = type;
        this.details = map;
        this.customType = str;
        this.customAttributes = map2;
        this.predefinedType = str2;
        this.predefinedAttributes = map3;
    }

    class Builder {
        final Type type;
        final long timestamp = System.currentTimeMillis();
        Map<String, String> details = Collections.emptyMap();
        String customType = null;
        Map<String, Object> customAttributes = Collections.emptyMap();
        String predefinedType = null;
        Map<String, Object> predefinedAttributes = Collections.emptyMap();

        public Builder(Type type) {
            this.type = type;
        }

        public Builder details(Map<String, String> map) {
            this.details = map;
            return this;
        }

        public Builder customType(String str) {
            this.customType = str;
            return this;
        }

        public Builder customAttributes(Map<String, Object> map) {
            this.customAttributes = map;
            return this;
        }

        public Builder predefinedType(String str) {
            this.predefinedType = str;
            return this;
        }

        public Builder predefinedAttributes(Map<String, Object> map) {
            this.predefinedAttributes = map;
            return this;
        }

        public SessionEvent build(SessionEventMetadata sessionEventMetadata) {
            return new SessionEvent(sessionEventMetadata, this.timestamp, this.type, this.details, this.customType, this.customAttributes, this.predefinedType, this.predefinedAttributes);
        }
    }

    public String toString() {
        if (this.stringRepresentation == null) {
            this.stringRepresentation = "[" + getClass().getSimpleName() + ": timestamp=" + this.timestamp + ", type=" + this.type + ", details=" + this.details.toString() + ", customType=" + this.customType + ", customAttributes=" + this.customAttributes.toString() + ", predefinedType=" + this.predefinedType + ", predefinedAttributes=" + this.predefinedAttributes.toString() + ", metadata=[" + this.sessionEventMetadata + "]]";
        }
        return this.stringRepresentation;
    }
}
