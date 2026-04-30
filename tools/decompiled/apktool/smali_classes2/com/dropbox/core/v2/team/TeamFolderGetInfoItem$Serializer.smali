.class Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderGetInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 303
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 305
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 313
    :goto_0
    if-nez v0, :cond_1

    .line 314
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    const/4 v1, 0x0

    .line 310
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_1
    const-string/jumbo v3, "id_not_found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    const-string/jumbo v0, "id_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 319
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v0

    .line 330
    :goto_1
    if-nez v1, :cond_2

    .line 331
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 334
    :cond_2
    return-object v0

    .line 322
    :cond_3
    const-string/jumbo v3, "team_folder_metadata"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadata(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v0

    goto :goto_1

    .line 328
    :cond_4
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
    .line 271
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 276
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderGetInfoItem$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->tag()Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->tag()Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 279
    const-string/jumbo v0, "id_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 280
    const-string/jumbo v0, "id_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->access$000(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 282
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 296
    :goto_0
    return-void

    .line 286
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 287
    const-string/jumbo v0, "team_folder_metadata"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 288
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->access$100(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/d/a/a/g;Z)V

    .line 289
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 276
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
    .line 271
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;Lcom/d/a/a/g;)V

    return-void
.end method
