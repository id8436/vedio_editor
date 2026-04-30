.class Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListFolderLongpollError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ListFolderLongpollError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ListFolderLongpollError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 68
    :goto_0
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 65
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 66
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v2, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->RESET:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    .line 77
    :goto_1
    if-nez v1, :cond_2

    .line 78
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 79
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 81
    :cond_2
    return-object v0

    .line 75
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->OTHER:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

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
    .line 37
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ListFolderLongpollError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError$1;->$SwitchMap$com$dropbox$core$v2$files$ListFolderLongpollError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string/jumbo v0, "reset"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    nop

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
    .line 37
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->serialize(Lcom/dropbox/core/v2/files/ListFolderLongpollError;Lcom/d/a/a/g;)V

    return-void
.end method
