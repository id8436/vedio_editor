.class Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharingPublicPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;

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
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 83
    :goto_0
    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    const-string/jumbo v2, "people_with_link_can_edit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_EDIT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 101
    :goto_1
    if-nez v1, :cond_2

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 105
    :cond_2
    return-object v0

    .line 89
    :cond_3
    const-string/jumbo v2, "people_with_link_can_view_and_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    goto :goto_1

    .line 92
    :cond_4
    const-string/jumbo v2, "invite_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->INVITE_ONLY:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    goto :goto_1

    .line 95
    :cond_5
    const-string/jumbo v2, "disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->DISABLED:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    goto :goto_1

    .line 99
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
    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$1;->$SwitchMap$com$dropbox$core$v2$paper$SharingPublicPolicyType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
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

    .line 47
    :pswitch_0
    const-string/jumbo v0, "people_with_link_can_edit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 51
    :pswitch_1
    const-string/jumbo v0, "people_with_link_can_view_and_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_2
    const-string/jumbo v0, "invite_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_3
    const-string/jumbo v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 45
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
    .line 40
    check-cast p1, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->serialize(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/d/a/a/g;)V

    return-void
.end method
