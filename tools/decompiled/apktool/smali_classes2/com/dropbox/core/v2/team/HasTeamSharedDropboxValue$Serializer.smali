.class Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "HasTeamSharedDropboxValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 253
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 261
    :goto_0
    if-nez v0, :cond_1

    .line 262
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const/4 v1, 0x0

    .line 258
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 259
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    const-string/jumbo v2, "has_team_shared_dropbox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    const-string/jumbo v0, "has_team_shared_dropbox"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 267
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->hasTeamSharedDropbox(Z)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object v0

    .line 273
    :goto_1
    if-nez v1, :cond_2

    .line 274
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 275
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 277
    :cond_2
    return-object v0

    .line 271
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

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
    .line 226
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$1;->$SwitchMap$com$dropbox$core$v2$team$HasTeamSharedDropboxValue$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->tag()Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 233
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 234
    const-string/jumbo v0, "has_team_shared_dropbox"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 235
    const-string/jumbo v0, "has_team_shared_dropbox"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->access$000(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 237
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 226
    check-cast p1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->serialize(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;Lcom/d/a/a/g;)V

    return-void
.end method
