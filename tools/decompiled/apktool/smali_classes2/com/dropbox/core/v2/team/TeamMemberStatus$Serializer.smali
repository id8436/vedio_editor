.class Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamMemberStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamMemberStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 300
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 302
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 310
    :goto_0
    if-nez v0, :cond_1

    .line 311
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    const/4 v1, 0x0

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_1
    const-string/jumbo v3, "active"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 314
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 330
    :goto_1
    if-nez v1, :cond_2

    .line 331
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 334
    :cond_2
    return-object v0

    .line 316
    :cond_3
    const-string/jumbo v3, "invited"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    goto :goto_1

    .line 319
    :cond_4
    const-string/jumbo v3, "suspended"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    goto :goto_1

    .line 322
    :cond_5
    const-string/jumbo v3, "removed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 324
    sget-object v0, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/RemovedStatus;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removed(Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    goto :goto_1

    .line 328
    :cond_6
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
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
    .line 264
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$1;->$SwitchMap$com$dropbox$core$v2$team$TeamMemberStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->tag()Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->tag()Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    const-string/jumbo v0, "active"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 275
    :pswitch_1
    const-string/jumbo v0, "invited"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :pswitch_2
    const-string/jumbo v0, "suspended"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 284
    const-string/jumbo v0, "removed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 285
    sget-object v0, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->access$000(Lcom/dropbox/core/v2/team/TeamMemberStatus;)Lcom/dropbox/core/v2/team/RemovedStatus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/RemovedStatus;Lcom/d/a/a/g;Z)V

    .line 286
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 264
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/d/a/a/g;)V

    return-void
.end method
