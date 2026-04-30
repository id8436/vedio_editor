.class Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RevokeSharedLinkError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 86
    const/4 v1, 0x1

    .line 87
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 95
    :goto_0
    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 92
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const-string/jumbo v2, "shared_link_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    sget-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    .line 116
    :goto_1
    if-nez v1, :cond_2

    .line 117
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 118
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 120
    :cond_2
    return-object v0

    .line 101
    :cond_3
    const-string/jumbo v2, "shared_link_access_denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    sget-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    .line 104
    :cond_4
    const-string/jumbo v2, "unsupported_link_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    sget-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    .line 107
    :cond_5
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    sget-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    .line 110
    :cond_6
    const-string/jumbo v2, "shared_link_malformed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 111
    sget-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->SHARED_LINK_MALFORMED:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    .line 114
    :cond_7
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
    .line 48
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RevokeSharedLinkError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
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

    .line 55
    :pswitch_0
    const-string/jumbo v0, "shared_link_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 59
    :pswitch_1
    const-string/jumbo v0, "shared_link_access_denied"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_2
    const-string/jumbo v0, "unsupported_link_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_3
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_4
    const-string/jumbo v0, "shared_link_malformed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 48
    check-cast p1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;Lcom/d/a/a/g;)V

    return-void
.end method
