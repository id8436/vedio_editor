.class Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PaperDocSharingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    .line 128
    if-nez p2, :cond_7

    .line 129
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    .line 135
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 138
    const-string/jumbo v3, "doc_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
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

    .line 147
    goto :goto_1

    .line 141
    :cond_0
    const-string/jumbo v3, "sharing_policy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/SharingPolicy;

    move-object v1, v2

    goto :goto_2

    .line 145
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 148
    :cond_2
    if-nez v2, :cond_3

    .line 149
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"doc_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    if-nez v1, :cond_4

    .line 152
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"sharing_policy\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V

    .line 159
    if-nez p2, :cond_5

    .line 160
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 162
    :cond_5
    return-object v0

    .line 157
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
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p3, :cond_0

    .line 113
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 115
    :cond_0
    const-string/jumbo v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 117
    const-string/jumbo v0, "sharing_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 119
    if-nez p3, :cond_1

    .line 120
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 122
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
    .line 107
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;Lcom/d/a/a/g;Z)V

    return-void
.end method
