package com.google.gdata.wireformats;

import com.google.common.collect.Maps;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.input.InputParser;
import com.google.gdata.wireformats.output.OutputGenerator;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class AltRegistry {
    private final Map<AltFormat, AltHandlers> altHandlers;
    private AltRegistry delegate;
    private boolean locked;
    private final Map<String, AltFormat> nameMap;
    private final Map<String, AltFormat> typeMap;

    class AltHandlers {
        private final OutputGenerator<?> generator;
        private final InputParser<?> parser;

        AltHandlers(InputParser<?> inputParser, OutputGenerator<?> outputGenerator) {
            this.parser = inputParser;
            this.generator = outputGenerator;
        }
    }

    public AltRegistry() {
        this(null);
    }

    public AltRegistry(AltRegistry altRegistry) {
        if (altRegistry != null) {
            this.nameMap = Maps.newHashMap(altRegistry.nameMap);
            this.typeMap = Maps.newHashMap(altRegistry.typeMap);
            this.altHandlers = Maps.newHashMap(altRegistry.altHandlers);
            this.delegate = altRegistry.delegate;
            return;
        }
        this.nameMap = Maps.newHashMap();
        this.typeMap = Maps.newHashMap();
        this.altHandlers = Maps.newHashMap();
    }

    private void registerFormat(AltFormat altFormat) {
        this.nameMap.put(altFormat.getName(), altFormat);
        if (altFormat.isSelectableByType()) {
            this.typeMap.put(altFormat.getContentType().getMediaType(), altFormat);
        }
    }

    public void register(AltFormat altFormat, InputParser<?> inputParser, OutputGenerator<?> outputGenerator) {
        Preconditions.checkNotNull(altFormat);
        Preconditions.checkNotNull(outputGenerator);
        Preconditions.checkState(!this.locked, "Registry is locked against changes");
        registerFormat(altFormat);
        this.altHandlers.put(altFormat, new AltHandlers(inputParser, outputGenerator));
    }

    public void lock() {
        this.locked = true;
    }

    public AltFormat lookupName(String str) {
        AltFormat altFormat = this.nameMap.get(str);
        if (altFormat == null && this.delegate != null) {
            return this.delegate.lookupName(str);
        }
        return altFormat;
    }

    public AltFormat lookupType(ContentType contentType) {
        AltFormat altFormat = this.typeMap.get(contentType.getMediaType());
        if (altFormat == null) {
            Iterator<AltFormat> it = this.typeMap.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AltFormat next = it.next();
                if (contentType.match(next.getContentType())) {
                    altFormat = next;
                    break;
                }
            }
        }
        if (altFormat == null && this.delegate != null) {
            return this.delegate.lookupType(contentType);
        }
        return altFormat;
    }

    public Collection<AltFormat> registeredFormats() {
        return Collections.unmodifiableCollection(this.altHandlers.keySet());
    }

    public InputParser<?> getParser(AltFormat altFormat) {
        AltHandlers altHandlers = this.altHandlers.get(altFormat);
        if (altHandlers != null) {
            return altHandlers.parser;
        }
        if (this.delegate != null) {
            return this.delegate.getParser(altFormat);
        }
        return null;
    }

    public OutputGenerator<?> getGenerator(AltFormat altFormat) {
        AltHandlers altHandlers = this.altHandlers.get(altFormat);
        if (altHandlers != null) {
            return altHandlers.generator;
        }
        if (this.delegate != null) {
            return this.delegate.getGenerator(altFormat);
        }
        return null;
    }

    public void setDelegate(AltRegistry altRegistry) {
        Preconditions.checkState(!this.locked, "Registry is locked against changes");
        this.delegate = altRegistry;
    }

    public boolean hasSameHandlers(AltRegistry altRegistry, AltFormat altFormat) {
        boolean z = false;
        AltHandlers altHandlers = this.altHandlers.get(altFormat);
        AltHandlers altHandlers2 = altRegistry.altHandlers.get(altFormat);
        if (altHandlers == null) {
            return altHandlers2 == null;
        }
        if (altHandlers2 != null && altHandlers.generator == altHandlers2.generator && altHandlers.parser == altHandlers2.parser) {
            z = true;
        }
        return z;
    }
}
