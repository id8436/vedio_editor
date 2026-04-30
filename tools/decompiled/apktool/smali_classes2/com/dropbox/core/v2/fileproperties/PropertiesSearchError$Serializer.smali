.class Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PropertiesSearchError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 249
    const/4 v1, 0x1

    .line 250
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 258
    :goto_0
    if-nez v0, :cond_1

    .line 259
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    const/4 v1, 0x0

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 256
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_1
    const-string/jumbo v2, "property_group_lookup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    const-string/jumbo v0, "property_group_lookup"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 264
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;->propertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;

    move-result-object v0

    .line 270
    :goto_1
    if-nez v1, :cond_2

    .line 271
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 274
    :cond_2
    return-object v0

    .line 268
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;

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
    .line 223
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$PropertiesSearchError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;->tag()Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 238
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 230
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 231
    const-string/jumbo v0, "property_group_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 232
    const-string/jumbo v0, "property_group_lookup"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;->access$000(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;Lcom/d/a/a/g;)V

    .line 234
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 228
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
    .line 223
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;Lcom/d/a/a/g;)V

    return-void
.end method
