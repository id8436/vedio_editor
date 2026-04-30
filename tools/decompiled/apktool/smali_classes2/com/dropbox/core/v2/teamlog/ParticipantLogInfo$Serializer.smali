.class Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ParticipantLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 335
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 337
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 345
    :goto_0
    if-nez v0, :cond_1

    .line 346
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    const/4 v1, 0x0

    .line 342
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 343
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_1
    const-string/jumbo v3, "user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    const-string/jumbo v0, "user"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 351
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 352
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    .line 362
    :goto_1
    if-nez v1, :cond_2

    .line 363
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 364
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 366
    :cond_2
    return-object v0

    .line 354
    :cond_3
    const-string/jumbo v3, "group"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->group(Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    goto :goto_1

    .line 360
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

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
    .line 303
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$ParticipantLogInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 310
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 311
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 312
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->access$000(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 314
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 319
    const-string/jumbo v0, "group"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->access$100(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupLogInfo;Lcom/d/a/a/g;Z)V

    .line 321
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 303
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;Lcom/d/a/a/g;)V

    return-void
.end method
