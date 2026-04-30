.class public Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;
.super Ljava/lang/Object;
.source "PropertyGroupTemplate.java"


# instance fields
.field protected final description:Ljava/lang/String;

.field protected final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    .line 48
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'description\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    .line 52
    if-nez p3, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'fields\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;

    .line 56
    if-nez v0, :cond_3

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'fields\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;

    .line 113
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    .line 115
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 99
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
