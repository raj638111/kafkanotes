

-- Recommendations for compatibility

    1. Make Primary key 'Required'
    2. Give default values for all the fields that could be removed in future
    3. Avoid using Enums as they cannot evolve over time
    4. Do not rename fields. Add alias instead
    5. When evolving schema,
        + Always give default values
        + Never delete a 'required' field

