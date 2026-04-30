.class Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ContextLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/ContextLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 362
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 364
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 372
    :goto_0
    if-nez v0, :cond_1

    .line 373
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 369
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 370
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_1
    const-string/jumbo v3, "team_member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMember(Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    .line 391
    :goto_1
    if-nez v1, :cond_2

    .line 392
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 393
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 395
    :cond_2
    return-object v0

    .line 380
    :cond_3
    const-string/jumbo v3, "non_team_member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 382
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    move-result-object v0

    .line 383
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMember(Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    goto :goto_1

    .line 385
    :cond_4
    const-string/jumbo v2, "team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    goto :goto_1

    .line 389
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 332
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$ContextLogInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 352
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 334
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 335
    const-string/jumbo v0, "team_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 336
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->access$000(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;Lcom/d/a/a/g;Z)V

    .line 337
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 341
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 342
    const-string/jumbo v0, "non_team_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->access$100(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;Lcom/d/a/a/g;Z)V

    .line 344
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 348
    :pswitch_2
    const-string/jumbo v0, "team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 327
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/d/a/a/g;)V

    return-void
.end method
