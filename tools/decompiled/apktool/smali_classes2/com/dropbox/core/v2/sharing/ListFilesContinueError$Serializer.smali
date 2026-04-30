.class Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListFilesContinueError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFilesContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 286
    const/4 v1, 0x1

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 295
    :goto_0
    if-nez v0, :cond_1

    .line 296
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    const/4 v1, 0x0

    .line 292
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_1
    const-string/jumbo v2, "user_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    const-string/jumbo v0, "user_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v0

    .line 302
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    move-result-object v0

    .line 310
    :goto_1
    if-nez v1, :cond_2

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 314
    :cond_2
    return-object v0

    .line 304
    :cond_3
    const-string/jumbo v2, "invalid_cursor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    goto :goto_1

    .line 308
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

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
    .line 256
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFilesContinueError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFilesContinueError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->tag()Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 263
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 264
    const-string/jumbo v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 265
    const-string/jumbo v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->access$000(Lcom/dropbox/core/v2/sharing/ListFilesContinueError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/d/a/a/g;)V

    .line 267
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 271
    :pswitch_1
    const-string/jumbo v0, "invalid_cursor"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 261
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
    .line 256
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFilesContinueError;Lcom/d/a/a/g;)V

    return-void
.end method
