.class public Lcom/adobe/xmp/impl/ParseRDF;
.super Ljava/lang/Object;
.source "ParseRDF.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;
.implements Lcom/adobe/xmp/XMPError;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_PREFIX:Ljava/lang/String; = "_dflt"

.field public static final RDFTERM_ABOUT:I = 0x3

.field public static final RDFTERM_ABOUT_EACH:I = 0xa

.field public static final RDFTERM_ABOUT_EACH_PREFIX:I = 0xb

.field public static final RDFTERM_BAG_ID:I = 0xc

.field public static final RDFTERM_DATATYPE:I = 0x7

.field public static final RDFTERM_DESCRIPTION:I = 0x8

.field public static final RDFTERM_FIRST_CORE:I = 0x1

.field public static final RDFTERM_FIRST_OLD:I = 0xa

.field public static final RDFTERM_FIRST_SYNTAX:I = 0x1

.field public static final RDFTERM_ID:I = 0x2

.field public static final RDFTERM_LAST_CORE:I = 0x7

.field public static final RDFTERM_LAST_OLD:I = 0xc

.field public static final RDFTERM_LAST_SYNTAX:I = 0x9

.field public static final RDFTERM_LI:I = 0x9

.field public static final RDFTERM_NODE_ID:I = 0x6

.field public static final RDFTERM_OTHER:I = 0x0

.field public static final RDFTERM_PARSE_TYPE:I = 0x4

.field public static final RDFTERM_RDF:I = 0x1

.field public static final RDFTERM_RESOURCE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/adobe/xmp/impl/ParseRDF;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    .line 75
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xca

    const/4 v2, 0x1

    .line 989
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v4

    .line 990
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 992
    if-eqz v0, :cond_4

    .line 994
    const-string/jumbo v1, "http://purl.org/dc/1.1/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    const-string/jumbo v0, "http://purl.org/dc/elements/1.1/"

    .line 1000
    :cond_0
    invoke-interface {v4, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    if-nez v1, :cond_1

    .line 1003
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1004
    :goto_0
    invoke-interface {v4, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 1018
    if-eqz p4, :cond_a

    .line 1022
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 1023
    const-string/jumbo v7, "_dflt"

    .line 1022
    invoke-static {v6, v0, v7, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object p1

    .line 1024
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 1030
    invoke-interface {v4, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1033
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 1034
    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    move v0, v2

    .line 1040
    :goto_1
    const-string/jumbo v3, "rdf:li"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1041
    const-string/jumbo v4, "rdf:value"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1044
    new-instance v6, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v6, v1, p3, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1046
    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setAlias(Z)V

    .line 1049
    if-nez v4, :cond_5

    .line 1051
    invoke-virtual {p1, v6}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1059
    :goto_2
    if-eqz v4, :cond_7

    .line 1061
    if-nez p4, :cond_2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1063
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Misplaced rdf:value element"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1003
    :cond_3
    const-string/jumbo v1, "_dflt"

    goto :goto_0

    .line 1010
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 1011
    const-string/jumbo v1, "XML namespace required for all elements and attributes"

    .line 1010
    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1055
    :cond_5
    invoke-virtual {p1, v2, v6}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_2

    .line 1065
    :cond_6
    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    .line 1068
    :cond_7
    if-eqz v3, :cond_9

    .line 1070
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1072
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Misplaced rdf:li element"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1074
    :cond_8
    const-string/jumbo v0, "[]"

    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 1077
    :cond_9
    return-object v6

    :cond_a
    move v0, v3

    goto :goto_1
.end method

.method private static addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1094
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1099
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {v1, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1100
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1102
    return-object v1
.end method

.method private static fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1118
    sget-boolean v1, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1120
    :cond_1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1121
    sget-boolean v2, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const-string/jumbo v2, "rdf:value"

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1128
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1130
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1132
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Redundant xml:lang for rdf:value element"

    .line 1133
    const/16 v2, 0xcb

    .line 1132
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1135
    :cond_3
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1136
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1137
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1141
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 1150
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-le v0, v2, :cond_6

    .line 1158
    sget-boolean v0, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1143
    :cond_5
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1144
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    :cond_6
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1153
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1160
    :cond_7
    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    .line 1161
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 1162
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1163
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    .line 1166
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1171
    return-void

    .line 1168
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1169
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_2
.end method

.method private static getRDFTermKind(Lorg/w3c/dom/Node;)I
    .locals 4

    .prologue
    .line 1256
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1260
    if-nez v0, :cond_1

    .line 1261
    const-string/jumbo v2, "about"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1262
    :cond_0
    instance-of v2, p0, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_1

    .line 1263
    const-string/jumbo v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 1269
    :cond_1
    const-string/jumbo v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1271
    const-string/jumbo v0, "li"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    const/16 v0, 0x9

    .line 1321
    :goto_0
    return v0

    .line 1275
    :cond_2
    const-string/jumbo v0, "parseType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1277
    const/4 v0, 0x4

    goto :goto_0

    .line 1279
    :cond_3
    const-string/jumbo v0, "Description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1281
    const/16 v0, 0x8

    goto :goto_0

    .line 1283
    :cond_4
    const-string/jumbo v0, "about"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1285
    const/4 v0, 0x3

    goto :goto_0

    .line 1287
    :cond_5
    const-string/jumbo v0, "resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1289
    const/4 v0, 0x5

    goto :goto_0

    .line 1291
    :cond_6
    const-string/jumbo v0, "RDF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1293
    const/4 v0, 0x1

    goto :goto_0

    .line 1295
    :cond_7
    const-string/jumbo v0, "ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1297
    const/4 v0, 0x2

    goto :goto_0

    .line 1299
    :cond_8
    const-string/jumbo v0, "nodeID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1301
    const/4 v0, 0x6

    goto :goto_0

    .line 1303
    :cond_9
    const-string/jumbo v0, "datatype"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1305
    const/4 v0, 0x7

    goto :goto_0

    .line 1307
    :cond_a
    const-string/jumbo v0, "aboutEach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1309
    const/16 v0, 0xa

    goto :goto_0

    .line 1311
    :cond_b
    const-string/jumbo v0, "aboutEachPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1313
    const/16 v0, 0xb

    goto :goto_0

    .line 1315
    :cond_c
    const-string/jumbo v0, "bagID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1317
    const/16 v0, 0xc

    goto :goto_0

    .line 1321
    :cond_d
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCoreSyntaxTerm(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1243
    if-gt v0, p0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOldTerm(I)Z
    .locals 1

    .prologue
    .line 1229
    const/16 v0, 0xa

    if-gt v0, p0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPropertyElementName(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1209
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isOldTerm(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isCoreSyntaxTerm(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isWhitespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1182
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return v1

    .line 1187
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1188
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1196
    const/4 v1, 0x1

    goto :goto_0

    .line 1190
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 90
    invoke-static {v0, p0}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V

    .line 91
    return-object v0
.end method

.method private static rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v5, 0x0

    .line 817
    const/4 v4, 0x0

    .line 818
    const/4 v3, 0x0

    .line 819
    const/4 v2, 0x0

    .line 821
    const/4 v1, 0x0

    .line 823
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 826
    const-string/jumbo v1, "Nested content not allowed with rdf:resource or property attributes"

    .line 827
    const/16 v2, 0xca

    .line 825
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-lt v6, v1, :cond_2

    .line 910
    const-string/jumbo v1, ""

    invoke-static {p0, p1, p2, v1, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 911
    const/4 v3, 0x0

    .line 913
    if-nez v2, :cond_1

    if-eqz v4, :cond_a

    .line 915
    :cond_1
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v6, v1}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 916
    if-nez v2, :cond_10

    .line 919
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setURI(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move v1, v3

    .line 928
    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 972
    return-void

    .line 833
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 834
    const-string/jumbo v7, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 835
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 831
    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 840
    :cond_3
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v7

    .line 842
    packed-switch v7, :pswitch_data_0

    .line 899
    :pswitch_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unrecognized attribute of empty property element"

    .line 900
    const/16 v2, 0xca

    .line 899
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 846
    goto :goto_4

    .line 849
    :pswitch_2
    if-eqz v3, :cond_4

    .line 851
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 852
    const-string/jumbo v1, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    .line 853
    const/16 v2, 0xca

    .line 851
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 855
    :cond_4
    if-eqz v2, :cond_5

    .line 857
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 858
    const-string/jumbo v1, "Empty property element can\'t have both rdf:value and rdf:resource"

    .line 859
    const/16 v2, 0xcb

    .line 857
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 862
    :cond_5
    const/4 v4, 0x1

    .line 863
    if-nez v2, :cond_11

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 867
    goto :goto_4

    .line 870
    :pswitch_3
    if-eqz v4, :cond_6

    .line 872
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 873
    const-string/jumbo v1, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    .line 874
    const/16 v2, 0xca

    .line 872
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 876
    :cond_6
    const/4 v1, 0x1

    move v3, v4

    move v4, v5

    move v9, v2

    move v2, v1

    move v1, v9

    .line 877
    goto :goto_4

    .line 880
    :pswitch_4
    const-string/jumbo v7, "value"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 881
    const-string/jumbo v7, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 883
    if-eqz v4, :cond_7

    .line 885
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 886
    const-string/jumbo v1, "Empty property element can\'t have both rdf:value and rdf:resource"

    .line 887
    const/16 v2, 0xcb

    .line 885
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 889
    :cond_7
    const/4 v0, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 891
    goto/16 :goto_4

    .line 892
    :cond_8
    const-string/jumbo v7, "xml:lang"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 894
    const/4 v1, 0x1

    move v9, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move v1, v9

    .line 896
    goto/16 :goto_4

    .line 915
    :cond_9
    const-string/jumbo v1, ""

    goto/16 :goto_1

    .line 922
    :cond_a
    if-eqz v5, :cond_10

    .line 924
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 925
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 930
    :cond_b
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 931
    if-eq v3, v0, :cond_c

    .line 932
    const-string/jumbo v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 933
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 928
    :cond_c
    :goto_5
    :pswitch_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 938
    :cond_d
    invoke-static {v3}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v4

    .line 940
    packed-switch v4, :pswitch_data_1

    .line 967
    :pswitch_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unrecognized attribute of empty property element"

    .line 968
    const/16 v2, 0xca

    .line 967
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 947
    :pswitch_7
    const-string/jumbo v4, "rdf:resource"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 951
    :pswitch_8
    if-nez v1, :cond_e

    .line 954
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 953
    invoke-static {v6, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 956
    :cond_e
    const-string/jumbo v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 958
    const-string/jumbo v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 962
    :cond_f
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v6, v3, v4, v5}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    :cond_10
    move v1, v3

    goto/16 :goto_2

    :cond_11
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_4

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xca

    const/4 v1, 0x0

    .line 620
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    move v0, v1

    .line 622
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 648
    const-string/jumbo v0, ""

    .line 649
    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 661
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 662
    return-void

    .line 624
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 625
    const-string/jumbo v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 626
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 633
    const-string/jumbo v6, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 635
    const-string/jumbo v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_2

    .line 637
    :cond_3
    const-string/jumbo v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 638
    const-string/jumbo v3, "ID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "datatype"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 644
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 645
    const-string/jumbo v1, "Invalid attribute for literal property element"

    .line 644
    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 651
    :cond_5
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 652
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 658
    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid child of literal property element"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 165
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Node element must be rdf:Description or typed node"

    .line 168
    const/16 v2, 0xca

    .line 167
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 170
    :cond_0
    if-eqz p3, :cond_1

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Top level typed node not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 176
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 180
    return-void
.end method

.method private static rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xca

    const/4 v0, 0x0

    .line 208
    move v1, v0

    .line 210
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 267
    return-void

    .line 212
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 216
    const-string/jumbo v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_2
    invoke-static {v2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v3

    .line 224
    packed-switch v3, :pswitch_data_0

    .line 263
    :pswitch_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid nodeElement attribute"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 229
    :pswitch_1
    if-lez v1, :cond_3

    .line 231
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mutally exclusive about, ID, nodeID attributes"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 235
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 237
    if-eqz p3, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 245
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mismatched top level rdf:about values"

    .line 248
    const/16 v2, 0xcb

    .line 247
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 253
    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :pswitch_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 139
    return-void

    .line 132
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static rdf_ParseTypeCollectionPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "ParseTypeCollection property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeLiteralPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 676
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "ParseTypeLiteral property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeOtherPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "ParseTypeOther property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 699
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 701
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move v0, v1

    .line 703
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 731
    invoke-static {p0, v2, p2, v1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 733
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-static {v2}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 737
    :cond_0
    return-void

    .line 705
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 706
    const-string/jumbo v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 707
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 703
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 714
    const-string/jumbo v6, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 716
    const-string/jumbo v4, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 718
    :cond_4
    const-string/jumbo v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 719
    const-string/jumbo v3, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "parseType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 726
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid attribute for ParseTypeResource property element"

    .line 727
    const/16 v2, 0xca

    .line 726
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 364
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 365
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->isPropertyElementName(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid property element name"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 371
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 372
    const/4 v0, 0x0

    move v1, v2

    .line 373
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 386
    if-eqz v0, :cond_1

    .line 388
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 396
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-le v0, v8, :cond_7

    .line 399
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 467
    :goto_2
    return-void

    .line 375
    :cond_2
    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 376
    const-string/jumbo v5, "xmlns"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 377
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "xmlns"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 379
    :cond_3
    if-nez v0, :cond_4

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    :cond_4
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_7
    move v0, v2

    .line 407
    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 448
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 450
    :goto_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v2, v0, :cond_11

    .line 460
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_2

    .line 409
    :cond_8
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 410
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 413
    const-string/jumbo v7, "xml:lang"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 414
    const-string/jumbo v1, "ID"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 416
    :cond_9
    const-string/jumbo v0, "datatype"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 418
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    .line 420
    :cond_a
    const-string/jumbo v0, "parseType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 422
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    .line 424
    :cond_c
    const-string/jumbo v0, "Literal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 426
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeLiteralPropertyElement()V

    goto/16 :goto_2

    .line 428
    :cond_d
    const-string/jumbo v0, "Resource"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 430
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    .line 432
    :cond_e
    const-string/jumbo v0, "Collection"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 434
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeCollectionPropertyElement()V

    goto/16 :goto_2

    .line 438
    :cond_f
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeOtherPropertyElement()V

    goto/16 :goto_2

    .line 407
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 452
    :cond_11
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v8, :cond_12

    .line 455
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    .line 450
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 464
    :cond_13
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2
.end method

.method private static rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 299
    return-void

    .line 285
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 292
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Expected property element node not found"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 296
    :cond_2
    invoke-static {p0, p1, v1, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_1
.end method

.method static rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V

    .line 114
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid attributes of rdf:RDF element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xca

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 489
    if-eqz p3, :cond_1

    const-string/jumbo v0, "iX:changes"

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    return-void

    .line 495
    :cond_1
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    move v0, v1

    .line 498
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_2

    move v3, v1

    move v0, v1

    .line 529
    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 595
    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Missing child of resource property element"

    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 500
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 501
    const-string/jumbo v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 502
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 498
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 508
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 509
    const-string/jumbo v7, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 511
    const-string/jumbo v5, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_2

    .line 513
    :cond_5
    const-string/jumbo v3, "ID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 519
    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 520
    const-string/jumbo v1, "Invalid attribute for resource property element"

    .line 519
    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 531
    :cond_7
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 532
    invoke-static {v5}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 534
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v2, :cond_10

    if-nez v0, :cond_10

    .line 536
    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 537
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 539
    if-eqz v0, :cond_b

    const-string/jumbo v7, "Bag"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 541
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 568
    :cond_8
    :goto_3
    invoke-static {p0, v4, v5, v1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 570
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 572
    invoke-static {v4}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_9
    :goto_4
    move v0, v2

    .line 529
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 543
    :cond_b
    if-eqz v0, :cond_c

    const-string/jumbo v7, "Seq"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 545
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_3

    .line 547
    :cond_c
    if-eqz v0, :cond_d

    const-string/jumbo v7, "Alt"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 549
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_3

    .line 554
    :cond_d
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 555
    if-nez v0, :cond_8

    const-string/jumbo v0, "Description"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 557
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 558
    if-nez v0, :cond_e

    .line 560
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 561
    const-string/jumbo v1, "All XML elements must be in a namespace"

    const/16 v2, 0xcb

    .line 560
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 563
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    const-string/jumbo v6, "rdf:type"

    invoke-static {v4, v6, v0}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto/16 :goto_3

    .line 574
    :cond_f
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 576
    invoke-static {v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_4

    .line 581
    :cond_10
    if-eqz v0, :cond_11

    .line 584
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 585
    const-string/jumbo v1, "Invalid child of resource property element"

    .line 584
    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 589
    :cond_11
    new-instance v0, Lcom/adobe/xmp/XMPException;

    .line 590
    const-string/jumbo v1, "Children of resource property element must be XML elements"

    .line 589
    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
