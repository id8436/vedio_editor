.class Lcom/dropbox/core/v2/team/AdminTier$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AdminTier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/AdminTier;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/AdminTier;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-static {p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 86
    :goto_0
    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 83
    invoke-static {p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 84
    invoke-static {p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const-string/jumbo v2, "team_admin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->TEAM_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    .line 104
    :goto_1
    if-nez v1, :cond_2

    .line 105
    invoke-static {p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 106
    invoke-static {p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 108
    :cond_2
    return-object v0

    .line 92
    :cond_3
    const-string/jumbo v2, "user_management_admin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->USER_MANAGEMENT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    goto :goto_1

    .line 95
    :cond_4
    const-string/jumbo v2, "support_admin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->SUPPORT_ADMIN:Lcom/dropbox/core/v2/team/AdminTier;

    goto :goto_1

    .line 98
    :cond_5
    const-string/jumbo v2, "member_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    goto :goto_1

    .line 102
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
    .line 43
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/AdminTier;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/AdminTier;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier$1;->$SwitchMap$com$dropbox$core$v2$team$AdminTier:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/AdminTier;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    const-string/jumbo v0, "team_admin"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 54
    :pswitch_1
    const-string/jumbo v0, "user_management_admin"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_2
    const-string/jumbo v0, "support_admin"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_3
    const-string/jumbo v0, "member_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 48
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
    .line 43
    check-cast p1, Lcom/dropbox/core/v2/team/AdminTier;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->serialize(Lcom/dropbox/core/v2/team/AdminTier;Lcom/d/a/a/g;)V

    return-void
.end method
