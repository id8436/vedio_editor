.class public Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;
.super Ljava/lang/Object;
.source "TeamEvent.java"


# instance fields
.field protected final actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

.field protected assets:Ljava/util/List;
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

.field protected origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

.field protected participants:Ljava/util/List;
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
.method protected constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'timestamp\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->timestamp:Ljava/util/Date;

    .line 294
    if-nez p2, :cond_1

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'eventCategory\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 298
    if-nez p3, :cond_2

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'actor\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 302
    iput-boolean p4, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->involveNonTeamMember:Z

    .line 303
    if-nez p5, :cond_3

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'context\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 307
    if-nez p6, :cond_4

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'eventType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_4
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    .line 311
    if-nez p7, :cond_5

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'details\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_5
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    .line 315
    iput-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    .line 316
    iput-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->participants:Ljava/util/List;

    .line 317
    iput-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->assets:Ljava/util/List;

    .line 318
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/TeamEvent;
    .locals 11

    .prologue
    .line 391
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamEvent;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->timestamp:Ljava/util/Date;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->eventCategory:Lcom/dropbox/core/v2/teamlog/EventCategory;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->actor:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->involveNonTeamMember:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->context:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->eventType:Lcom/dropbox/core/v2/teamlog/EventType;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->details:Lcom/dropbox/core/v2/teamlog/EventDetails;

    iget-object v8, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    iget-object v9, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->participants:Ljava/util/List;

    iget-object v10, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->assets:Ljava/util/List;

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/teamlog/TeamEvent;-><init>(Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/dropbox/core/v2/teamlog/ActorLogInfo;ZLcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/dropbox/core/v2/teamlog/EventType;Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public withAssets(Ljava/util/List;)Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/AssetLogInfo;",
            ">;)",
            "Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 373
    if-eqz p1, :cond_1

    .line 374
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    .line 375
    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'assets\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->assets:Ljava/util/List;

    .line 381
    return-object p0
.end method

.method public withOrigin(Lcom/dropbox/core/v2/teamlog/OriginLogInfo;)Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->origin:Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    .line 332
    return-object p0
.end method

.method public withParticipants(Ljava/util/List;)Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;",
            ">;)",
            "Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 348
    if-eqz p1, :cond_1

    .line 349
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    .line 350
    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'participants\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamEvent$Builder;->participants:Ljava/util/List;

    .line 356
    return-object p0
.end method
