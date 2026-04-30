package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.teamlog.ActorLogInfo;
import com.dropbox.core.v2.teamlog.AssetLogInfo;
import com.dropbox.core.v2.teamlog.ContextLogInfo;
import com.dropbox.core.v2.teamlog.EventCategory;
import com.dropbox.core.v2.teamlog.EventDetails;
import com.dropbox.core.v2.teamlog.EventType;
import com.dropbox.core.v2.teamlog.OriginLogInfo;
import com.dropbox.core.v2.teamlog.ParticipantLogInfo;
import com.google.gdata.client.GDataProtocol;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TeamEvent {
    protected final ActorLogInfo actor;
    protected final List<AssetLogInfo> assets;
    protected final ContextLogInfo context;
    protected final EventDetails details;
    protected final EventCategory eventCategory;
    protected final EventType eventType;
    protected final boolean involveNonTeamMember;
    protected final OriginLogInfo origin;
    protected final List<ParticipantLogInfo> participants;
    protected final Date timestamp;

    public TeamEvent(Date date, EventCategory eventCategory, ActorLogInfo actorLogInfo, boolean z, ContextLogInfo contextLogInfo, EventType eventType, EventDetails eventDetails, OriginLogInfo originLogInfo, List<ParticipantLogInfo> list, List<AssetLogInfo> list2) {
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'timestamp' is null");
        }
        this.timestamp = LangUtil.truncateMillis(date);
        if (eventCategory == null) {
            throw new IllegalArgumentException("Required value for 'eventCategory' is null");
        }
        this.eventCategory = eventCategory;
        if (actorLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'actor' is null");
        }
        this.actor = actorLogInfo;
        this.origin = originLogInfo;
        this.involveNonTeamMember = z;
        if (contextLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'context' is null");
        }
        this.context = contextLogInfo;
        if (list != null) {
            Iterator<ParticipantLogInfo> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'participants' is null");
                }
            }
        }
        this.participants = list;
        if (list2 != null) {
            Iterator<AssetLogInfo> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'assets' is null");
                }
            }
        }
        this.assets = list2;
        if (eventType == null) {
            throw new IllegalArgumentException("Required value for 'eventType' is null");
        }
        this.eventType = eventType;
        if (eventDetails == null) {
            throw new IllegalArgumentException("Required value for 'details' is null");
        }
        this.details = eventDetails;
    }

    public TeamEvent(Date date, EventCategory eventCategory, ActorLogInfo actorLogInfo, boolean z, ContextLogInfo contextLogInfo, EventType eventType, EventDetails eventDetails) {
        this(date, eventCategory, actorLogInfo, z, contextLogInfo, eventType, eventDetails, null, null, null);
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public EventCategory getEventCategory() {
        return this.eventCategory;
    }

    public ActorLogInfo getActor() {
        return this.actor;
    }

    public boolean getInvolveNonTeamMember() {
        return this.involveNonTeamMember;
    }

    public ContextLogInfo getContext() {
        return this.context;
    }

    public EventType getEventType() {
        return this.eventType;
    }

    public EventDetails getDetails() {
        return this.details;
    }

    public OriginLogInfo getOrigin() {
        return this.origin;
    }

    public List<ParticipantLogInfo> getParticipants() {
        return this.participants;
    }

    public List<AssetLogInfo> getAssets() {
        return this.assets;
    }

    public static Builder newBuilder(Date date, EventCategory eventCategory, ActorLogInfo actorLogInfo, boolean z, ContextLogInfo contextLogInfo, EventType eventType, EventDetails eventDetails) {
        return new Builder(date, eventCategory, actorLogInfo, z, contextLogInfo, eventType, eventDetails);
    }

    public class Builder {
        protected final ActorLogInfo actor;
        protected List<AssetLogInfo> assets;
        protected final ContextLogInfo context;
        protected final EventDetails details;
        protected final EventCategory eventCategory;
        protected final EventType eventType;
        protected final boolean involveNonTeamMember;
        protected OriginLogInfo origin;
        protected List<ParticipantLogInfo> participants;
        protected final Date timestamp;

        protected Builder(Date date, EventCategory eventCategory, ActorLogInfo actorLogInfo, boolean z, ContextLogInfo contextLogInfo, EventType eventType, EventDetails eventDetails) {
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'timestamp' is null");
            }
            this.timestamp = LangUtil.truncateMillis(date);
            if (eventCategory == null) {
                throw new IllegalArgumentException("Required value for 'eventCategory' is null");
            }
            this.eventCategory = eventCategory;
            if (actorLogInfo == null) {
                throw new IllegalArgumentException("Required value for 'actor' is null");
            }
            this.actor = actorLogInfo;
            this.involveNonTeamMember = z;
            if (contextLogInfo == null) {
                throw new IllegalArgumentException("Required value for 'context' is null");
            }
            this.context = contextLogInfo;
            if (eventType == null) {
                throw new IllegalArgumentException("Required value for 'eventType' is null");
            }
            this.eventType = eventType;
            if (eventDetails == null) {
                throw new IllegalArgumentException("Required value for 'details' is null");
            }
            this.details = eventDetails;
            this.origin = null;
            this.participants = null;
            this.assets = null;
        }

        public Builder withOrigin(OriginLogInfo originLogInfo) {
            this.origin = originLogInfo;
            return this;
        }

        public Builder withParticipants(List<ParticipantLogInfo> list) {
            if (list != null) {
                Iterator<ParticipantLogInfo> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'participants' is null");
                    }
                }
            }
            this.participants = list;
            return this;
        }

        public Builder withAssets(List<AssetLogInfo> list) {
            if (list != null) {
                Iterator<AssetLogInfo> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'assets' is null");
                    }
                }
            }
            this.assets = list;
            return this;
        }

        public TeamEvent build() {
            return new TeamEvent(this.timestamp, this.eventCategory, this.actor, this.involveNonTeamMember, this.context, this.eventType, this.details, this.origin, this.participants, this.assets);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.timestamp, this.eventCategory, this.actor, this.origin, Boolean.valueOf(this.involveNonTeamMember), this.context, this.participants, this.assets, this.eventType, this.details});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamEvent teamEvent = (TeamEvent) obj;
            if ((this.timestamp == teamEvent.timestamp || this.timestamp.equals(teamEvent.timestamp)) && ((this.eventCategory == teamEvent.eventCategory || this.eventCategory.equals(teamEvent.eventCategory)) && ((this.actor == teamEvent.actor || this.actor.equals(teamEvent.actor)) && this.involveNonTeamMember == teamEvent.involveNonTeamMember && ((this.context == teamEvent.context || this.context.equals(teamEvent.context)) && ((this.eventType == teamEvent.eventType || this.eventType.equals(teamEvent.eventType)) && ((this.details == teamEvent.details || this.details.equals(teamEvent.details)) && ((this.origin == teamEvent.origin || (this.origin != null && this.origin.equals(teamEvent.origin))) && (this.participants == teamEvent.participants || (this.participants != null && this.participants.equals(teamEvent.participants)))))))))) {
                if (this.assets == teamEvent.assets) {
                    return true;
                }
                if (this.assets != null && this.assets.equals(teamEvent.assets)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamEvent> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamEvent teamEvent, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("timestamp");
            StoneSerializers.timestamp().serialize(teamEvent.timestamp, gVar);
            gVar.a("event_category");
            EventCategory.Serializer.INSTANCE.serialize(teamEvent.eventCategory, gVar);
            gVar.a("actor");
            ActorLogInfo.Serializer.INSTANCE.serialize(teamEvent.actor, gVar);
            gVar.a("involve_non_team_member");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(teamEvent.involveNonTeamMember), gVar);
            gVar.a(GDataProtocol.Parameter.CONTEXT);
            ContextLogInfo.Serializer.INSTANCE.serialize(teamEvent.context, gVar);
            gVar.a("event_type");
            EventType.Serializer.INSTANCE.serialize(teamEvent.eventType, gVar);
            gVar.a("details");
            EventDetails.Serializer.INSTANCE.serialize(teamEvent.details, gVar);
            if (teamEvent.origin != null) {
                gVar.a("origin");
                StoneSerializers.nullableStruct(OriginLogInfo.Serializer.INSTANCE).serialize(teamEvent.origin, gVar);
            }
            if (teamEvent.participants != null) {
                gVar.a("participants");
                StoneSerializers.nullable(StoneSerializers.list(ParticipantLogInfo.Serializer.INSTANCE)).serialize(teamEvent.participants, gVar);
            }
            if (teamEvent.assets != null) {
                gVar.a("assets");
                StoneSerializers.nullable(StoneSerializers.list(AssetLogInfo.Serializer.INSTANCE)).serialize(teamEvent.assets, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamEvent deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                OriginLogInfo originLogInfo = null;
                EventDetails eventDetailsDeserialize = null;
                EventType eventTypeDeserialize = null;
                ContextLogInfo contextLogInfoDeserialize = null;
                Boolean bool = null;
                ActorLogInfo actorLogInfoDeserialize = null;
                EventCategory eventCategoryDeserialize = null;
                Date dateDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("timestamp".equals(strD)) {
                        dateDeserialize = StoneSerializers.timestamp().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("event_category".equals(strD)) {
                        eventCategoryDeserialize = EventCategory.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("actor".equals(strD)) {
                        actorLogInfoDeserialize = ActorLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("involve_non_team_member".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if (GDataProtocol.Parameter.CONTEXT.equals(strD)) {
                        contextLogInfoDeserialize = ContextLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("event_type".equals(strD)) {
                        eventTypeDeserialize = EventType.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("details".equals(strD)) {
                        eventDetailsDeserialize = EventDetails.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("origin".equals(strD)) {
                        originLogInfo = (OriginLogInfo) StoneSerializers.nullableStruct(OriginLogInfo.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("participants".equals(strD)) {
                        list2 = (List) StoneSerializers.nullable(StoneSerializers.list(ParticipantLogInfo.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("assets".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(AssetLogInfo.Serializer.INSTANCE)).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (dateDeserialize == null) {
                    throw new j(kVar, "Required field \"timestamp\" missing.");
                }
                if (eventCategoryDeserialize == null) {
                    throw new j(kVar, "Required field \"event_category\" missing.");
                }
                if (actorLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"actor\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"involve_non_team_member\" missing.");
                }
                if (contextLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"context\" missing.");
                }
                if (eventTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"event_type\" missing.");
                }
                if (eventDetailsDeserialize == null) {
                    throw new j(kVar, "Required field \"details\" missing.");
                }
                TeamEvent teamEvent = new TeamEvent(dateDeserialize, eventCategoryDeserialize, actorLogInfoDeserialize, bool.booleanValue(), contextLogInfoDeserialize, eventTypeDeserialize, eventDetailsDeserialize, originLogInfo, list2, list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamEvent;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
