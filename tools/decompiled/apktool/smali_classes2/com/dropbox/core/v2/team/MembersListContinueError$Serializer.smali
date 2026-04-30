.class Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersListContinueError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersListContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersListContinueError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 67
    :goto_0
    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 64
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 65
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_1
    const-string/jumbo v2, "invalid_cursor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/team/MembersListContinueError;

    .line 76
    :goto_1
    if-nez v1, :cond_2

    .line 77
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 78
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 80
    :cond_2
    return-object v0

    .line 74
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListContinueError;->OTHER:Lcom/dropbox/core/v2/team/MembersListContinueError;

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
    .line 36
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersListContinueError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersListContinueError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListContinueError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersListContinueError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersListContinueError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const-string/jumbo v0, "invalid_cursor"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 41
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
    .line 36
    check-cast p1, Lcom/dropbox/core/v2/team/MembersListContinueError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersListContinueError;Lcom/d/a/a/g;)V

    return-void
.end method
