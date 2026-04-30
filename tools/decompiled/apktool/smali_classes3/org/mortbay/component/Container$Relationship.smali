.class public Lorg/mortbay/component/Container$Relationship;
.super Ljava/lang/Object;
.source "Container.java"


# instance fields
.field private _child:Ljava/lang/Object;

.field private _container:Lorg/mortbay/component/Container;

.field private _parent:Ljava/lang/Object;

.field private _relationship:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lorg/mortbay/component/Container$Relationship;->_container:Lorg/mortbay/component/Container;

    .line 243
    iput-object p2, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    .line 244
    iput-object p3, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    .line 245
    iput-object p4, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    .line 246
    return-void
.end method

.method constructor <init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/mortbay/component/Container$1;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/component/Container$Relationship;-><init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 280
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/mortbay/component/Container$Relationship;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    check-cast p1, Lorg/mortbay/component/Container$Relationship;

    .line 283
    iget-object v1, p1, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChild()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainer()Lorg/mortbay/component/Container;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_container:Lorg/mortbay/component/Container;

    return-object v0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
