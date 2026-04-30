.class Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/TeamEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamEvent;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 502
    .line 503
    if-nez p2, :cond_14

    .line 504
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 505
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    if-nez v0, :cond_13

    move-object v9, v10

    move-object v8, v10

    move-object v7, v10

    move-object v6, v10

    move-object v5, v10

    move-object v4, v10

    move-object v3, v10

    move-object v2, v10

    move-object v1, v10

    .line 518
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v11, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v11, :cond_a

    .line 519
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 521
    const-string/jumbo v11, "timestamp"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 522
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v4, v0

    .line 554
    goto :goto_1

    .line 524
    :cond_0
    const-string/jumbo v11, "event_category"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 525
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-result-object v2

    move-object v0, v4

    goto :goto_2

    .line 527
    :cond_1
    const-string/jumbo v11, "actor"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 528
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v3

    move-object v0, v4

    goto :goto_2

    .line 530
    :cond_2
    const-string/jumbo v11, "involve_non_team_member"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 531
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_2

    .line 533
    :cond_3
    const-string/jumbo v11, "context"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 534
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v5

    move-object v0, v4

    goto :goto_2

    .line 536
    :cond_4
    const-string/jumbo v11, "event_type"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 537
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventType$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v6

    move-object v0, v4

    goto :goto_2

    .line 539
    :cond_5
    const-string/jumbo v11, "details"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 540
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v7

    move-object v0, v4

    goto :goto_2

    .line 542
    :cond_6
    const-string/jumbo v11, "origin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 543
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    move-object v8, v0

    move-object v0, v4

    goto/16 :goto_2

    .line 545
    :cond_7
    const-string/jumbo v11, "participants"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 546
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v9, v0

    move-object v0, v4

    goto/16 :goto_2

    .line 548
    :cond_8
    const-string/jumbo v11, "assets"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 549
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    move-object v0, v4

    goto/16 :goto_2

    .line 552
    :cond_9
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v4

    goto/16 :goto_2

    .line 555
    :cond_a
    if-nez v1, :cond_b

    .line 556
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"timestamp\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_b
    if-nez v2, :cond_c

    .line 559
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"event_category\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_c
    if-nez v3, :cond_d

    .line 562
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"actor\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_d
    if-nez v4, :cond_e

    .line 565
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"involve_non_team_member\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_e
    if-nez v5, :cond_f

    .line 568
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"context\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_f
    if-nez v6, :cond_10

    .line 571
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"event_type\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_10
    if-nez v7, :cond_11

    .line 574
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"details\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_11
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamEvent;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/teamlog/TeamEvent;-><init>(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Ljava/util/List;Ljava/util/List;)V

    .line 581
    if-nez p2, :cond_12

    .line 582
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 584
    :cond_12
    return-object v0

    .line 579
    :cond_13
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object v0, v10

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamEvent;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/TeamEvent;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 465
    if-nez p3, :cond_0

    .line 466
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 468
    :cond_0
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 470
    const-string/jumbo v0, "event_category"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/d/a/a/g;)V

    .line 472
    const-string/jumbo v0, "actor"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;Lcom/d/a/a/g;)V

    .line 474
    const-string/jumbo v0, "involve_non_team_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->involveNonTeamMember:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 476
    const-string/jumbo v0, "context"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/d/a/a/g;)V

    .line 478
    const-string/jumbo v0, "event_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EventType;Lcom/d/a/a/g;)V

    .line 480
    const-string/jumbo v0, "details"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 481
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/d/a/a/g;)V

    .line 482
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    if-eqz v0, :cond_1

    .line 483
    const-string/jumbo v0, "origin"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 484
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 486
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 487
    const-string/jumbo v0, "participants"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 488
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->participants:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 490
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 491
    const-string/jumbo v0, "assets"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;->assets:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 494
    :cond_3
    if-nez p3, :cond_4

    .line 495
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 497
    :cond_4
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 460
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamEvent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/TeamEvent$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamEvent;Lcom/d/a/a/g;Z)V

    return-void
.end method
