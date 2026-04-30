.class Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "RemovePaperDocUser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/RemovePaperDocUser;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 130
    if-nez p2, :cond_7

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 132
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    .line 137
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 140
    const-string/jumbo v3, "doc_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 149
    goto :goto_1

    .line 143
    :cond_0
    const-string/jumbo v3, "member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    move-object v1, v2

    goto :goto_2

    .line 147
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 150
    :cond_2
    if-nez v2, :cond_3

    .line 151
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"doc_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    if-nez v1, :cond_4

    .line 154
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"member\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 161
    if-nez p2, :cond_5

    .line 162
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 164
    :cond_5
    return-object v0

    .line 159
    :cond_6
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p3, :cond_0

    .line 115
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 117
    :cond_0
    const-string/jumbo v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 119
    const-string/jumbo v0, "member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/d/a/a/g;)V

    .line 121
    if-nez p3, :cond_1

    .line 122
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 124
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 109
    check-cast p1, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->serialize(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;Lcom/d/a/a/g;Z)V

    return-void
.end method
