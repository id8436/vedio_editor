.class Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PathLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/PathLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PathLogInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    .line 158
    if-nez p2, :cond_6

    .line 159
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 160
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    if-nez v0, :cond_5

    move-object v2, v1

    .line 165
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 168
    const-string/jumbo v3, "namespace_relative"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 177
    goto :goto_1

    .line 171
    :cond_0
    const-string/jumbo v3, "contextual"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    goto :goto_2

    .line 175
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 178
    :cond_2
    if-nez v2, :cond_3

    .line 179
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"namespace_relative\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;Ljava/lang/String;)V

    .line 186
    if-nez p2, :cond_4

    .line 187
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 189
    :cond_4
    return-object v0

    .line 184
    :cond_5
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

    :cond_6
    move-object v0, v1

    goto :goto_0
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
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 140
    if-nez p3, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 143
    :cond_0
    const-string/jumbo v0, "namespace_relative"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 145
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 146
    const-string/jumbo v0, "contextual"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 149
    :cond_1
    if-nez p3, :cond_2

    .line 150
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 152
    :cond_2
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
    .line 135
    check-cast p1, Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
