.class Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersGetInfoError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersGetInfoError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersGetInfoError;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 59
    :goto_0
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 57
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoError;->OTHER:Lcom/dropbox/core/v2/team/MembersGetInfoError;

    .line 65
    if-nez v1, :cond_2

    .line 66
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 69
    :cond_2
    return-object v0
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
    .line 32
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersGetInfoError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersGetInfoError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersGetInfoError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersGetInfoError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 39
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 42
    return-void
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
    .line 32
    check-cast p1, Lcom/dropbox/core/v2/team/MembersGetInfoError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersGetInfoError;Lcom/d/a/a/g;)V

    return-void
.end method
