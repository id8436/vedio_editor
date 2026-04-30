.class public Lcom/dropbox/core/v2/teamlog/TeamEvent;
.super Ljava/lang/Object;
.source "TeamEvent.java"


# instance fields
.field protected final actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

.field protected final assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/AssetLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

.field protected final details:Lcom/dropbox/core/v2/teamlog/EventDetails;

.field protected final eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field protected final eventType:Lcom/dropbox/core/v2/teamlog/EventType;

.field protected final involveNonTeamMember:Z

.field protected final origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

.field protected final participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;)V
    .locals 11

    .prologue
    .line 144
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/teamlog/TeamEvent;-><init>(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Ljava/util/List;Ljava/util/List;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/dropbox/core/v2/teamlog/EventCategory;",
            "Lcom/dropbox/core/v2/teamlog/ActorLogInfo;",
            "Z",
            "Lcom/dropbox/core/v2/teamlog/ContextLogInfo;",
            "Lcom/dropbox/core/v2/teamlog/EventType;",
            "Lcom/dropbox/core/v2/teamlog/EventDetails;",
            "Lcom/dropbox/core/v2/teamlog/OriginLogInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/AssetLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'timestamp\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    .line 79
    if-nez p2, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'eventCategory\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 83
    if-nez p3, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'actor\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 87
    iput-object p8, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    .line 88
    iput-boolean p4, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->involveNonTeamMember:Z

    .line 89
    if-nez p5, :cond_3

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'context\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 93
    if-eqz p9, :cond_5

    .line 94
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    .line 95
    if-nez v0, :cond_4

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'participants\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_5
    iput-object p9, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    .line 101
    if-eqz p10, :cond_7

    .line 102
    invoke-interface {p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    .line 103
    if-nez v0, :cond_6

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'assets\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_7
    iput-object p10, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    .line 109
    if-nez p6, :cond_8

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'eventType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_8
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    .line 113
    if-nez p7, :cond_9

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'details\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_9
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    .line 117
    return-void
.end method

.method public static newBuilder(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;
    .locals 8

    .prologue
    .line 270
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;-><init>(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 414
    if-ne p1, p0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 418
    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 422
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;

    .line 423
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 424
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/EventCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 425
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->involveNonTeamMember:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->involveNonTeamMember:Z

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 427
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    .line 428
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/EventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    .line 429
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/EventDetails;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    .line 430
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    .line 431
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    .line 432
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 436
    goto/16 :goto_0
.end method

.method public getActor()Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    return-object v0
.end method

.method public getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/AssetLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    return-object v0
.end method

.method public getDetails()Lcom/dropbox/core/v2/teamlog/EventDetails;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    return-object v0
.end method

.method public getEventCategory()Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object v0
.end method

.method public getEventType()Lcom/dropbox/core/v2/teamlog/EventType;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    return-object v0
.end method

.method public getInvolveNonTeamMember()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->involveNonTeamMember:Z

    return v0
.end method

.method public getOrigin()Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 397
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->involveNonTeamMember:Z

    .line 402
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    aput-object v2, v0, v1

    .line 397
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 409
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
