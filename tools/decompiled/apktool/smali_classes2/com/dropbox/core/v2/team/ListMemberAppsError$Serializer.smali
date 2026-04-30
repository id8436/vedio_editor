.class Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListMemberAppsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/ListMemberAppsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/ListMemberAppsError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 71
    :goto_0
    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 68
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 69
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo v2, "member_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberAppsError;->MEMBER_NOT_FOUND:Lcom/dropbox/core/v2/team/ListMemberAppsError;

    .line 80
    :goto_1
    if-nez v1, :cond_2

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 82
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 84
    :cond_2
    return-object v0

    .line 78
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberAppsError;->OTHER:Lcom/dropbox/core/v2/team/ListMemberAppsError;

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
    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/ListMemberAppsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/ListMemberAppsError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberAppsError$1;->$SwitchMap$com$dropbox$core$v2$team$ListMemberAppsError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/ListMemberAppsError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-string/jumbo v0, "member_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 45
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
    .line 40
    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberAppsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->serialize(Lcom/dropbox/core/v2/team/ListMemberAppsError;Lcom/d/a/a/g;)V

    return-void
.end method
