.class Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PropertiesSearchQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    .line 171
    if-nez p2, :cond_8

    .line 172
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 173
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    if-nez v0, :cond_7

    .line 178
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LogicalOperator;->OR_OPERATOR:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    move-object v3, v2

    .line 179
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 180
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 182
    const-string/jumbo v4, "query"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 194
    goto :goto_1

    .line 185
    :cond_0
    const-string/jumbo v4, "mode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    move-result-object v0

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 188
    :cond_1
    const-string/jumbo v4, "logical_operator"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LogicalOperator$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 192
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 195
    :cond_3
    if-nez v3, :cond_4

    .line 196
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"query\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4
    if-nez v2, :cond_5

    .line 199
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"mode\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_5
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;Lcom/dropbox/core/v2/fileproperties/LogicalOperator;)V

    .line 206
    if-nez p2, :cond_6

    .line 207
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 209
    :cond_6
    return-object v0

    .line 204
    :cond_7
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

    :cond_8
    move-object v0, v2

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
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p3, :cond_0

    .line 154
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 156
    :cond_0
    const-string/jumbo v0, "query"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 158
    const-string/jumbo v0, "mode"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;Lcom/d/a/a/g;)V

    .line 160
    const-string/jumbo v0, "logical_operator"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LogicalOperator$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LogicalOperator;Lcom/d/a/a/g;)V

    .line 162
    if-nez p3, :cond_1

    .line 163
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 165
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
    .line 148
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;Lcom/d/a/a/g;Z)V

    return-void
.end method
