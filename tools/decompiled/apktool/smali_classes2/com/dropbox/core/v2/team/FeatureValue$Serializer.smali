.class Lcom/dropbox/core/v2/team/FeatureValue$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FeatureValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/FeatureValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/FeatureValue$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeatureValue$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 333
    const/4 v1, 0x1

    .line 334
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 342
    :goto_0
    if-nez v0, :cond_1

    .line 343
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 339
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_1
    const-string/jumbo v2, "upload_api_rate_limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    const-string/jumbo v0, "upload_api_rate_limit"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 348
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimit(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    .line 360
    :goto_1
    if-nez v1, :cond_2

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 364
    :cond_2
    return-object v0

    .line 351
    :cond_3
    const-string/jumbo v2, "has_team_shared_dropbox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    const-string/jumbo v0, "has_team_shared_dropbox"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 354
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropbox(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    goto :goto_1

    .line 358
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue;

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
    .line 299
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/FeatureValue;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$1;->$SwitchMap$com$dropbox$core$v2$team$FeatureValue$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->tag()Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 322
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 307
    const-string/jumbo v0, "upload_api_rate_limit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 308
    const-string/jumbo v0, "upload_api_rate_limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->access$000(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->serialize(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;Lcom/d/a/a/g;)V

    .line 310
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 315
    const-string/jumbo v0, "has_team_shared_dropbox"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 316
    const-string/jumbo v0, "has_team_shared_dropbox"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->access$100(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->serialize(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;Lcom/d/a/a/g;)V

    .line 318
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 304
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
    .line 299
    check-cast p1, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->serialize(Lcom/dropbox/core/v2/team/FeatureValue;Lcom/d/a/a/g;)V

    return-void
.end method
