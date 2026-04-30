.class public Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "GenericEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public addProperties(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/appsforyourdomain/Property;->setName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/google/gdata/data/appsforyourdomain/Property;->setValue(Ljava/lang/String;)V

    .line 55
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/Property;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 45
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 46
    return-void
.end method

.method public getAllProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 122
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_0
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 81
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeProperty(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 95
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 100
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 144
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Found property with null name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_2
    return-void
.end method
