.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;
.super Ljava/lang/Object;
.source "AdobeDCXMetadataIterator.java"


# instance fields
.field _options:I

.field _path:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

.field _value:Ljava/lang/String;

.field iter:Lcom/adobe/xmp/XMPIterator;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Z)V
    .locals 5

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p3, :cond_0

    .line 68
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/adobe/xmp/options/IteratorOptions;->setJustChildren(Z)Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadataIterator.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Z)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p2, :cond_0

    .line 33
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/IteratorOptions;->setJustChildren(Z)Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPMeta;->iterator(Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadataIterator.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deepIteratorFromXMP(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Z)V

    .line 55
    return-object v0
.end method

.method public static deepIteratorFromXMP(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Z)V

    .line 91
    return-object v0
.end method

.method public static iteratorFromXMP(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Z)V

    .line 48
    return-object v0
.end method

.method public static iteratorFromXMP(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Z)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public next()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 107
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 108
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;

    check-cast v1, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v5

    move v0, v2

    .line 111
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_0

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_1

    .line 113
    add-int/lit8 v2, v0, 0x1

    .line 118
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->_path:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    .line 119
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->_value:Ljava/lang/String;

    .line 120
    iput v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->_options:I

    .line 122
    const/4 v2, 0x1

    .line 128
    :goto_1
    return v2

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->_path:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    .line 126
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->_value:Ljava/lang/String;

    .line 127
    iput v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->_options:I

    goto :goto_1
.end method

.method public skipSiblings()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->skipSiblings()V

    .line 141
    return-void
.end method

.method public skipSubtree()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iter:Lcom/adobe/xmp/XMPIterator;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPIterator;->skipSubtree()V

    .line 136
    return-void
.end method
