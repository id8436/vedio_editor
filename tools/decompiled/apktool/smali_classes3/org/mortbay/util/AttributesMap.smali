.class public Lorg/mortbay/util/AttributesMap;
.super Ljava/lang/Object;
.source "AttributesMap.java"

# interfaces
.implements Lorg/mortbay/util/Attributes;


# instance fields
.field _map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public static getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 90
    instance-of v0, p0, Lorg/mortbay/util/AttributesMap;

    if-eqz v0, :cond_0

    .line 91
    check-cast p0, Lorg/mortbay/util/AttributesMap;

    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p0}, Lorg/mortbay/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 94
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearAttributes()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mortbay/util/AttributesMap;->_map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
