.class public Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;
.super Ljava/lang/Object;
.source "PropertyGroupUpdate.java"


# instance fields
.field protected final addOrUpdateFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyField;",
            ">;"
        }
    .end annotation
.end field

.field protected final removeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyField;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'templateId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'templateId\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'templateId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    .line 55
    if-eqz p2, :cond_4

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyField;

    .line 57
    if-nez v0, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'addOrUpdateFields\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    .line 63
    if-eqz p3, :cond_6

    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    if-nez v0, :cond_5

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'removeFields\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    .line 71
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Builder;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    if-ne p1, p0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 233
    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;

    .line 238
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    .line 239
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    .line 240
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 244
    goto :goto_0
.end method

.method public getAddOrUpdateFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    return-object v0
.end method

.method public getRemoveFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 224
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
