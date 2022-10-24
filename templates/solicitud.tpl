{include file = 'header.tpl'}
{if (isset($error))}
          <h2>{$error}</h2>
    {else}
        <h2>Sus datos se han enviado correctamente</h2>
{/if}
{include file = 'footer.tpl'}