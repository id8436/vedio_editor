.class public Lcom/dropbox/core/v2/common/PathRootError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PathRootError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/common/PathRootError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/common/PathRootError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/dropbox/core/v2/common/PathRootError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRootError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/common/PathRootError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 282
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 292
    :goto_0
    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    const/4 v1, 0x0

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    const-string/jumbo v3, "invalid"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    sget-object v0, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/common/InvalidPathRootError;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/dropbox/core/v2/common/PathRootError;->invalid(Lcom/dropbox/core/v2/common/InvalidPathRootError;)Lcom/dropbox/core/v2/common/PathRootError;

    move-result-object v0

    .line 306
    :goto_1
    if-nez v1, :cond_2

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 310
    :cond_2
    return-object v0

    .line 300
    :cond_3
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/common/PathRootError;->NO_PERMISSION:Lcom/dropbox/core/v2/common/PathRootError;

    goto :goto_1

    .line 304
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/common/PathRootError;->OTHER:Lcom/dropbox/core/v2/common/PathRootError;

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
    .line 254
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/common/PathRootError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/common/PathRootError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/dropbox/core/v2/common/PathRootError$1;->$SwitchMap$com$dropbox$core$v2$common$PathRootError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/common/PathRootError;->tag()Lcom/dropbox/core/v2/common/PathRootError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/common/PathRootError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 261
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 262
    const-string/jumbo v0, "invalid"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError;->access$000(Lcom/dropbox/core/v2/common/PathRootError;)Lcom/dropbox/core/v2/common/InvalidPathRootError;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/common/InvalidPathRootError$Serializer;->serialize(Lcom/dropbox/core/v2/common/InvalidPathRootError;Lcom/d/a/a/g;Z)V

    .line 264
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 268
    :pswitch_1
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 259
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
    .line 254
    check-cast p1, Lcom/dropbox/core/v2/common/PathRootError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->serialize(Lcom/dropbox/core/v2/common/PathRootError;Lcom/d/a/a/g;)V

    return-void
.end method
